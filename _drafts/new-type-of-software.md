---
layout: post
title: "A new type of software"
---

On the topic of losing job versus transforming job.

TL;DR: Generative Artifical Intelligence (GenAI) together with agentic loop can already yield a good results during software development, but far from being a silver bullet. Will there be a decent chunk of time when human-written software still requires a developer in the loop? And will software created from the scratch by automation will be able to grow in complixity relying only on generative / agentic skills?

Living in an era of AI hype it is very hard to understand what are the real capabilities of Large Language Models(LLM)-assisted coding progress. And creating fakes never was as easy as it is now.

From a personal experience LLM-assistance is great in the areas of knowledge search with addition of retrieval-augmented generation (RAG), as long as you double-check the sources. You have a pretty good chance that LLM gives a good result in any area, where you are not an expert in, as you wouldn't do better anyway (not within a short time). 

In software development you no longer need to spend time creating small throw-away snippets, scripts or tools (like writing shell scripts yourself - why would you?). That assumes you still can review and validate the code that it doesn't do anything rogue, and have no compliance or quality requirements.

But for big and established code bases there are still challenges. Human needs to feed appropriate context to the agent with all the information required to implement a feature - and sometimes it goes beyond the explanation that code sources can tell. And I'm yet to see if there is a possibility to retrofit such design / architecture documentation that is enough for agents to be at 99% of what is needed, but not too verbose - to leave the room in context window to do useful work.

It is certain that there is a progress. And with sufficient effort a lot of current challenges with context size and speed of generation should be eventually solved for almost all existing applications. The question though is how quickly will it be solved, and will it be sustainable from resource usage (price) perspective to replace humans. Will there be an era of clear separation of agentic-built and human-built applications?

Every month there is something new, for now the most promising way to build software with agents is to bring structure into vibe-coding. For now the context window size is a problem as it runs out pretty quickly for decently-sized application. When building from the ground up there must be the way to document all the important bits in bite sized chunks - information about application design, conventions, tools used, platforms or infrastructure it runs on. 

With this approach, when LLM is provided with specifications, it builds both the application and all the necessary documentation to support it for subsequent runs. It writes all the decisions down, and ideally reinforces it with non-probabilistic tooling to confirm that specification is followed (e.g. automated testing).

There are multiple approaches to build applications with LLM, and one that looks so far the most promising is somewhat structured vibe-coding. For now the context window size is a problem as it runs out pretty quickly for decently-sized application. 

When building from the ground up there must be the way to document all the important bits in bite sized chunks - information about application design, conventions, tools used, platforms or infrastructure it runs on. With this approach, when LLM is provided with specifications, it builds both the application and all the necessary documentation to support it. It writes all the decisions down, and ideally reinforces it with non-probabilistic tooling to confirm that specification is followed (e.g. automated testing).

A lot of things will stop matter if no human interaction with the code is required - LLM doesn't care about styling guides, or particular tools (as it can use any interchangeable). And when things happen in agentic-first then abstractions or design patterns may not even be understood by humans easily, as long job is done. It doesn't mean that software will be optimised, but it will work and may be fit to purpose.

I wonder when (or if?) building above application will be possible, will it be possible to create enough artifacts (documents, tools) to support big non-vibe coded applications? The software projects that already grew organically. There is no real defined specification for many of the use cases. Software is the specification in such cases. When models will become smart enough to understand the application constraints? Understanding environment where software runs, how it may be used by users. How long will it take to onboard these apps into LLM-only workflow? Will it even be feasible to hand over existing applications to AI for maintenance, or these will require a human in the loop for a substantial time? 

If progress steadily continues, it is easy to imagine a situation where applications reach complexity that no human is able to reasonably grasp, but agents happily live with it and modify it. Will there be a new type of agentic-built agentic-driven applications? Surely that means all the software eventually can be maintained that way then, right? Shall see
