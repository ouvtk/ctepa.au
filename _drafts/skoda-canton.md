---
layout: post
title: "[In Progress] Skoda Kodiaq Canton replacement"
---

TL;DR: I don't have a suitable solution. This is not a guide. It is a stream of thoughts to document how I got here.

If you are looking for feasible Canton replacement, you probably need to find a solution to get signal out of factory amplifier to your digital signal processor (DSP) and further to your amplifier.
I've also heard anecdotes to re-coding the car audio head unit to behave as non-Canton one, which makes it is easier to deal with (I guess less channels to manipulate on DSP).
I don't accepted this fate yet, as it leads towards complex system with likely compromised quality (and also an overall expensive system as a bonus).

Trying to find a special way.

# Input parameters
Skoda Kodiaq 2021 with Canton audio installed:
 - 4 mid-bass,
 - 4 tweeters,
 - 1 centre speaker,
 - 1 subwoofer, and
 - 1 amplifier with DSP that drives everything above.
Sounds good for what it is, but doesn't bring me joy.

Blindly replacing speaker drivers without replacing the amplifier is a risky business. Or at least without getting controls over the sound levels per speaker. 
Canton equaliser (EQ) has 7 bands, which is way better than typical 'treble-bass', and gives enough flexibility for the customers. Still 32-band EQ would be better for me, while scary for many others.
Also getting access to cross-over points and filter slopes would be great.

# Looking into the amplifier
So that's where I've started - the device name is 'Panasonic 16CH ETH Audio Amplifier', with the part number 3G0 035 466.
And from my understanding 16CH means 16 channels, but not all of the channels are used in my setup as far as I can see.

Trying to understand better what can be done with an amp, was looking inside:
![Printed circuit board of the amplifier with the Automotive Ethernet chip and tracks to it being highlighted](/assets/images/skoda-canton/amp-back-panel.jpg)

The main thing that draws attention is how tracks on the right side of the board are layed out with a very smooth turns, not usual 45 degrees turns.
I think this is where `ETH` from the name comes into play. These tracks lead into NXP TJA1100 microchip (through the opto- or similar isolation), which provides 100BASE-T1 PHY for Automotive Ethernet.

That looked promising, as it is not some unknown communication medium. Internet has mentions of the MOST bus being used for Canton amplifiers, and hard to tell if it makes things more difficult or not.

So my immediate idea - I want to do 'Man-in-the-Middle' between a car audio head unit and an amplifier to see what is going on there, and if I can make any sense of it.

# Connecting to Automotive Ethernet
Didn't connect to Automotive Ethernet before (and didn't even know it exist as a separate thing). So started to look for an adapter that will allow to connect Automotive Ethernet with a regular laptop. 
And as I find out these usually described as 100BASE-TX to 100BASE-T1 PHY adapters.

One promising thing was [NXP RDDRONE-T1ADAPT](https://nxp.gitbook.io/rddrone-t1adapt). It uses same TJA1100 microchip that in my mind could minimise any incompatibilities. 
RDDRONE adapter has good documentation, and being from a reputable manufacturer gives more hope. But at that time I would have to wait it for 3+ months. 
I wanted it sooner.

After few evenings scrolling on AliExpress I've landed with [SPEEDLINK SE1002 from Maxgeek](https://www.aliexpress.com/item/1005006490096103.html). Some pros:
- it has good metal case, 
- it is compact, 
- it is possible to power via USB-C, and
- the customer support is responsive and shared all user manuals they had.
And it wasn't that expensive in case nothing works at all.

# Connecting to the Amplifier
In mean time I needed to solve connectivity of the above adapter with the circuit between the amplifier and the car audio head unit.

Good that I have a friend of mine who had a business to install audio, and apparently the connector that amplifier has is pretty common across European car brands.

Solution was to buy one of the OEM adapter harnesses. In my case the cheapest [suitable Audiotec Fischer harness](https://www.audiotec-fischer.de/en/match/adaptors-harnesses/pp-mb-1-9mbux-bur) that was in stock.
That way I can connect anything in-between the head unit and the amplifier, without touching (as if modifying) factory wires or connectors.

# First attempt to use SE1002

I've spliced the required wires on the harness to tap into them without breaking the connectivity. Connected new wires to the Automotive Ethernet adapter.
![Adapter harness with two wires spliced and connected to the Automotive Ethernet adapter](/assets/images/skoda-canton/harness-splice.jpg)

Connected the harness between the amplifier and the head unit without any problems, plugged USB-C power and RJ45 from the laptop into automotive ethernet adapter.
Power lights were on, and ethernet connection lights were on, but there were no traffic in Wireshark.

At that point I didn't understand what exactly Master-Slave switch does for the Automotive Ethernet. And I wasn't even sure if signal levels are compatible with the adapter, or if the adapter works at all.

The best result of the first attempt was that nothing was broken, no smoke escaped. Even with the harness the amplifier was able to talk with the head unit and play music on speakers through another connector (9-pin one for front mid-bass and sub).

![Modified adapter harness connected to the car amplifier and to the laptop](/assets/images/skoda-canton/harness-connected.jpg)

# Second attempt to sniff the traffic

After contacting the seller of the Automotive Ethernet adapter, and getting versions of a user manual they had, there was no indication that I've done something incorrectly.

Tested wires and connections with the probe to ensure all connectivity is in place. And went for a second attempt to check everything in the car.

This time after few tries to plug-unplug the harness, while keeping ethernet adapter always on, I finally saw the green blinking light from insides of the adapter (red one is the power, green one is available Ethernet link).
And traffic started to flow. But music from the amplifier stopped to play (I still don't know details on why it works that way, but I assume a stable link cannot be established to more than 1 device on a physical layer).

Traffic was usual Ethernet with IPv6, with devices having properly registered MAC addresses. Main protocols in the sniffed traffic were:
- Precision Time Protocol
- IPv6 neighbour discovery
- Unknown protocol that was identified by Wireshark as Microtik Neigbour Discovery or SKYPE

Clearly, unknown protocol here is point of interest. It was UDP coming from the amplifier (as I've learned after) to one of the IPv6 multicast addresses, with payloads like:
```
38 00 2d 01 00 00 00 04  3b 61 00 00
38 00 2d 01 00 00 00 05  3b 63 00 01 03
38 00 2d 01 00 00 00 08  3b 42 03 00 2d 00 04 00
```

A few hours of searching didn't help to find a direction. 
Microsoft Copilot was helpful to tell that `38002d01` is some type of a header, and at least some of the following bytes will be length of the payload (like `04` is the length, `3b 61 00 00` is a payload).
But then it read about Automotive application, it gave good vectors to look for:
 - [Unified Diagnostic Services (UDS) protocol](https://uds.readthedocs.io).
 - Automotive systems use Audio Video Bridging (AVB) and Time-Sensitive Networking (TSN).

Former one looked like a false positive - I wasn't able to map above payloads into the protocol frames and messages. 
And Wireshark claims that can identify UDS protocol, but didn't see it as such.

Latter was a good hint overall to get into a rabbit hole of reading standards documentation.
First promising hint was that on the amplifier's circuit board TJA1100 chip was connected to the NXP MPC5746C microcontroller. And it supports AVB through Ethernet (according to the specification).
Another promising hint was that AVB requires that three extensions be met in order to comply with IEEE802.1:
* IEEE802.1AS – timing and synchronisation for time-sensitive applications (gPTP)
* IEEE802.1Qat – stream reservation protocol (SRP)
* IEEE802.1Qav – forwarding and queuing for time-sensitive streams (FQTSS).

And I saw the PTP traffic in the capture mentioned above, likely that is a pre-requisite for AVB.

# Third attempt to capture the traffic

At this point I already realised what Master-Slave switch does - that's an indication on what device initiates the physical link establishment.

And because in my second attempt I wasn't able to be a proper 'Man-in-the-Middle', I decided I need to have control who has physical connection to the ethernet adapter.
Simplest solution was to break the circuit by cutting one of the wires and soldering in a switch I found somewhere on the shelfs.
![Modified adapter harness with the switch soldered on one of the splices](/assets/images/skoda-canton/harness-switch.jpg)

So for connecting to the amplifier I enable Master mode for the adapter, and flipping switch one direction. Then to connect to the head unit setting Slave mode, and flipping switch back.
Switch isn't great quality, and not necessarily has a contact bounce, but needs a bit of extra help to establish a connection.

This time I was able to ensure that the head unit multicasts UDP to the:
- `ff14::5` always the message with the same payload: `20 73 0c 00 00 00 00 08 73 00 04 00 01 00 00 00` (every 200ms)
- `ff14::1:2d` two payloads: `30 00 2d 01 00 00 00 04 40 00 01 0a` and `30 00 2d 01 00 00 00 02 1b 42`.

And the amplifier only multicasts to `ff14::1:2d`. So I wonder if the head unit does discovery that way - different types of amplifiers may respond on the different addresses?
Payloads were similar to the ones from the second attempt, with addition - I was able to see some ASCII abbreviations, like SKCANCEQ (which I assume Skoda Canton Custom Equaliser, but no very important at this stage).

Also I don't know what I did - turning on and off the car power, touching the not-the-best-quality switch in the harness, switching Master-Slave on the adapter - but the head unit started sending Real-time Transport Protocol (RTP) and AVB RTP Control Protocol (RTCP) packets.
Both RTP and AVB RTCP were multicasted to `ff14::2:2`. And the RTP payload of Type 98 (which is dynamic as I've learned after) was always empty.

So it definitely requires some negotiating and understanding between sender and receiver before head unit will start to send anything meaningful.
