---
layout: post
title: "A new type of software"
---

On the topic of losing jobs versus transforming jobs.

TL;DR: Generative Artificial Intelligence (GenAI), together with agentic loops, can already yield good results during software development, but it is far from being a silver bullet. Will there be a decent chunk of time when human-written software still requires a developer in the loop? And will software created from scratch by automation be able to grow in complexity relying only on generative / agentic skills?

<!--*~-.,¸excerpt¸.-~·*-->

Living in an era of AI hype, it is very hard to understand the real capabilities of Large Language Model (LLM)-assisted coding. And creating fakes has never been as easy as it is now.

From personal experience, LLM assistance is great in the areas of knowledge search with the addition of retrieval-augmented generation (RAG), as long as you double-check the sources. You have a pretty good chance that an LLM gives a good result in any area where you are not an expert anyway (at least not within a short time).

In software development, you no longer need to spend time creating small throw-away snippets, scripts, or tools (like writing shell scripts yourself - why would you?). That assumes you can still review and validate the code so that it doesn't do anything rogue, and that you have no strict compliance or quality requirements.

But for big and established codebases there are still challenges. A human needs to feed appropriate context to the agent with all the information required to implement a feature - and sometimes it goes beyond the explanation that code sources can tell. I'm yet to see whether it is possible to retrofit design / architecture documentation that is enough for agents to be at 99% of what is needed, but not too verbose - leaving enough room in the context window to do useful work.

It is certain that there is progress. With sufficient effort, many of the current challenges with context size and speed of generation should eventually be solved for almost all existing applications. The question, though, is how quickly this will be solved, and whether it will be sustainable from a resource-usage (price) perspective to replace humans. Will there be an era of clear separation between agentic-built and human-built applications?

Every month there is something new. For now, the most promising way to build software with agents is to bring structure into vibe-coding. The context window size is still a problem, as it runs out pretty quickly for a decently sized application. 

When building from the ground up, there must be a way to document all the important bits in bite-sized chunks - information about application design, conventions, tools used, and the platforms or infrastructure it runs on. With this approach, when an LLM is provided with specifications, it builds both the application and all the necessary documentation to support it for subsequent runs. It writes all the decisions down and ideally reinforces them with non-probabilistic tooling to confirm that the specification is followed (e.g. automated testing).

A lot of things will stop mattering if no human interaction with the code is required - LLMs don't care about style guides or particular tools (as they can use any interchangeable ones). And when things happen in an agentic-first world, abstractions or design patterns may not even be easily understood by humans, as long as the job is done. It doesn't mean that the software will be optimised, but it will work and may be fit for purpose.

I wonder when (or if) building such applications will be possible, and whether it will be possible to create enough artifacts (documents, tools) to support big, non-vibe-coded applications - the software projects that already grew organically. There is no real defined specification for many of the use cases; in such cases software is the specification. When will models become smart enough to understand the application's constraints, the environment where the software runs, and how it may be used by users? How long will it take to onboard these apps into an LLM-only workflow? Will it even be feasible to hand over existing applications to AI for maintenance, or will they require a human in the loop for a substantial time?

If progress steadily continues, it is easy to imagine a situation where applications reach a complexity that no human is able to reasonably grasp, but agents happily live with it and modify it. Will there be a new type of agentic-built, agentic-driven application? Surely that means all software can eventually be maintained that way then, right? 

Shall see