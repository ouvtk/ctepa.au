---
layout: post
title: "Don't be afraid of legacy systems"
---

I believe you only can gain certain experience while maintaing legacy software.
It is not always need to chase green-field projects.

Problem is that not every legacy system is beneficial for your skills and sanity.

## What is legacy

The baseline definition of a legacy software is a software for a system that yet cannot be decomissioned, as it fulfills some critical need, but this system cannot be reasonably improved due to unsupported runtime, outdated environment, or some specific vendor or library lock-ins.

But you may often hear legacy to be defined much more broadly, that may include software which has:
 - no automated tests of core functions to make refactoring and support easier;
 - not enough documentation to describe its core functions, and design decisions;
 - no "original" engineers left, together with a knowledge of a system intricate details;
 - just anything in the opposition to a greenfield development.

This post is about broad definition of legacy as an old software system that still can be improved. Usually this possible during product-led development, not when project has development and maintenance phases. And there surely should be business incentive to improve.

## Where is legacy

![Exponential chart](/assets/images/dont-disregard-legacy/exponential_ed.jpg)

Just speculating here, but unless humanity creates as twice of green-field projects during next time period as previously ever created - we have more systems that can fall into legacy category, than new systems.

Depending of how definition of legacy framed, it may range from ubiqitous to just common. And this increases likelyhood of you working on a legacy project, rather than a greenfield one.

## Attractive parts

Good legacy systems have established usage patterns. They may not be known by you, or by the team. But figuring it out is one of the helpful skills to have - either by user interviewing, or by adding monitoring to your system.

After system reaches certain size, no one has exact understanding of all the processes that happening within the system. Often request for a new modification leads to a reverse engineering of how certain part of the system works. 

Expanding feature set of the legacy system requires additional thinking in order to keep complexity at the reasonable level (to not cause much instabilities). Often writing more code is not the best solution to a problem. Ideally you would even want to reduce code, while still delivering expected outcome.

If contraints allow it is an interesting excersise to write tests for existing code before any refactoring. Forces to be creative on how to test the code that wasn't built with tests in mind. That way it also ensures that refactored code is covered.

## Detractive parts

For old system scaffolding and early architectural decisions were done far in the past. And some of those decisions can only be changed with a major effort, others with even greater effort.

Just due to complexity and size of the code, system may have more small bugs that require attention. It is easy to fall into process of fixing small annoying bugs, rather than focusing on bigger chunks of important changes. Make sure you challenge yourself and learn something new, not routinely fixing only minor problems.

Also big systems without established best practices could mean that things will move slowly, need to have patience for a longer feedback loop. Which also makes it harder to tell whether things are improving or stagnating.

## Summary

Legacy code can be improved and be up to date, while you are getting crucial skills.

By itself having legacy system doesn't mean you are doomed, but if business processes are malfunction then both legacy and greenfield development will go nowhere pleasant.

Maintaining legacy by itself is challening, and it will be even bigger problem if business doesn't now how to improve it, or doesn't have an incentive to.

Wary when you hear "I know how to do it right, just never get the chance", often when there is a chance, no "right" thing happens, because routine is not established. And it may pose a challenge of upskilling your team first, before tackling legacy.

Don't be afraid of the legacy code, be afraid of the legacy practices. And choose your battles wisely.

[//]: # (It is not too common for a legacy project/product to be good. But that's also applicable to a greenfield project/product within same organisation - broken processes are broken everywhere.)
