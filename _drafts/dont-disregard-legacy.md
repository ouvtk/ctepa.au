---
layout: post
title: "Don't disregard legacy code"
---

I believe you only can gain certain experience while maintaing legacy software.
So it is not always need to chase green-field projects.

Problem is that not every legacy system is beneficial for your skills and sanity.

## What is legacy

The baseline definition of a legacy software is a software for a system that yet cannot be decomissioned, as it fulfills some critical need, but this system cannot be reasonably improved due to unsupported runtime, outdated environment, or some specific vendor or library lock-ins.

But you may often hear legacy to be defined much more broadly, that may include software which has:
 - no automated tests of core functions to make refactoring and support easier;
 - not enough documentation to describe its core functions, and design decisions;
 - no "original" engineers left, together with a knowledge of a system intricate details;
 - just as anything to oppose a greenfield development.

This post is about legacy that still can be improved, and there is a business incentive to do so.

## Where is legacy

Need an exponential graph here.

Unless humanity creates as more as twice of green-field projects during next time period, than previously ever created. We have more systems that can fall into legacy category, than new systems.

Depending of how definition of legacy framed, it maybe from ubiqitous to common. 

## Why legacy is good

Good legacy systems have established usage patterns. They may not be known by you, or by the team. But figuring it out is one of the helpful skills to have - either by user interviewing, or by adding monitoring to your system. [Monitoring / operations of old system with decent history and usage]

After system reaches certain size, no one has exact understanding of all the processes that happening within the system. Often request for a new modification leads to a reverse engineering of how certain part of the system works. [Reverse engineering (if no one knows how exactly it should work)] 

Expanding feature set of the legacy system requires additional thinking in order to keep complexity at the reasonable level (to not cause much instabilities). Often writing more code is not the best solution to a problem. Ideally you would even want to reduce code, while still delivering expected outcome. [Refactoring within constraints, How to remove the code, not adding it, Matching business needs (with legacy you already have your core functionality), Forces you to go beyond boundaries to find the right solution (more code is rarely a right one)]

[How to test difficult code]

## Why legacy is bad

1. Look for red flags
1. Cannot make scaffolding or early architectual decisions
1. If business processes are malfunction then both legacy and greenfield development will go nowhere (if you hear "I know how to do it right, just never get the chance", when there will be the chance, right thing would not happen, as routine is not established)
1. Make sure you learn something new, not just a routine (but routine is important part as well)
1. Things can move too slow,or not to move at all (see malfunctioning processes)
1. Maintaining legacy by itself is quite a challenge, it will be a bigger problem if business doesn't have incentive to improve it
1. In summary - don't be afraid legacy code, avoid legacy practices

## Summary

Choose your battles wisely?
