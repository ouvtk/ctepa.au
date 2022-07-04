---
layout: post
title: "Don't be afraid of legacy systems"
---

I believe you can only gain certain experience while maintaining legacy software. 
It is not always needed to chase greenfield projects.

Problem is that not every legacy system is beneficial for your skills and sanity.

## What is legacy

The baseline definition of legacy software is software for a system that yet cannot be decommissioned, as it fulfills some critical needs. But this system cannot be reasonably improved due to unsupported runtime, outdated environment, or some specific vendor or library lock-ins.

But you may often hear legacy to be defined much more broadly, that may include software which has:
 - no automated tests of core functions to make refactoring and support easier;
 - not enough documentation to describe its core functions, and design decisions;
 - no "original" engineers left, together with a knowledge of a system intricate details;
 - just anything in the opposition to greenfield development.

This post is about the broad definition of legacy as an old software system that still can be improved. Usually, this is possible during product-led development, not when the project has development and maintenance phases. And there surely should be a business incentive to improve.

## Where is legacy

![Exponential chart](/assets/images/dont-disregard-legacy/exponential.svg)

Just speculating here, but unless humanity creates as twice of greenfield projects during the next time period as previously ever created &mdash; we have more systems falling into the legacy category, rather than new systems.

Depending on how the definition of legacy is framed, it may range from ubiquitous to just common. And this increases the likelihood that you will be working on a legacy project, rather than a greenfield one.

## Attractive parts

_Building observability._ Good legacy systems have established usage patterns. They may not be known by you, or by the team. But figuring it out is one of the helpful skills to have &mdash; either by user interviewing or by adding monitoring to your system.

_Reverse engineering._ After the system reaches a certain size, no one has an exact understanding of all the processes that are happening within the system. Often a request for a new modification leads to reverse engineering of how a certain part of the system works.

_Moderating complexity._ Expanding the feature set of the legacy system requires additional thinking in order to keep complexity at a reasonable level (to not cause many short-term instabilities and long-term headaches). Often writing more code is not the best solution to a problem. Ideally, you would even want to reduce code, while still delivering the expected outcome.

_Automating regression testing._ If constraints allow it is an interesting exercise to write tests for existing code before any refactoring. Forces to be creative on how to test the code that wasn't built with tests in mind. That way it also ensures that refactored code is covered.

## Detractive parts

_Harder to turn the ship._ For an old system scaffolding and early architectural decisions were done far in the past. And some of those decisions can only be changed with a major effort, others with even greater effort.

_More small bugs._ Just due to the complexity and size of the code, the system may have more small bugs that require attention. It is easy to fall into the process of fixing small annoying bugs, rather than focusing on bigger chunks of important changes. Make sure you challenge yourself and learn something new, not routinely fixing only minor problems.

_Longer feedback loop._ Also, big systems without established best practices could mean that things will move slowly, you need to have patience for a longer feedback loop. Which also makes it harder to tell whether things are improving or stagnating.

## Summary

Legacy code can be improved and be up to date, while you are still acquiring crucial skills.

By itself having a legacy system doesn't mean you are doomed, but if the business processes are malfunction, then both legacy and greenfield development will go nowhere pleasant.

Maintaining a legacy by itself is challenging, and it will be even bigger problem if a business doesn't know how to improve it or doesn't have an incentive to.

Wary when you hear "I know how to do it right, just never get the chance", often when there is a chance, no "right" thing happens, because routine is not established. And it may pose a challenge of upskilling your team first, before tackling legacy.

Don't be afraid of the legacy code, be afraid of the legacy practices. And choose your battles wisely.
