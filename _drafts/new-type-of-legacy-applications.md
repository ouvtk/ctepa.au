---
layout: post
title: "Will there be a new type of legacy applications?"
---

TL;DR: After vibecoded applications reach a good scale and quality levels, will LLM be able to maintain old human-written application by themselves? Or these will stay as AI-augmented chores for humans?

// Do non-vibecoded applications become an applications that LLM will have struggle to maintain by themselves?

AI hype - not everything is being done as shiny as some people make it look, but it is certainly helpful.

Great for search and RAG. Great for any area where you are not an expert in - you are happy to help AI with any little problems it has, because you wouldn't do it better anyway, and especially not in this time frame.
For smallish task like throw-away scripts or mini-apps is definitely yes, where quality and compliance and other things don't matter as much.

Somewhat on the topic about losing a job versus transforming a job, let's imagine an application that...

Considering that other smart people say that we likely will keep grinding improving models, approaching either AGI or somewhat bigger context windows and better success rates of model guessing from the input what the user wants (and improvement of tools that prepare context and other things)

There are multiple approaches to build applications with LLM, and one that looks so far the most promising is somewhat structured vibe-coding. For now context window is a problem, which is for decently-sized application modern thinking model runs out pretty quickly. There must be the way to split all the application context into bite-sized chunks - information about application design, conventions, tools used, platforms or infrastructure it runs on. So when you provide LLM with specification, it build application from ground up, documents all the steps and keeps writing and updating documentation as it goes. And writes all the decisions down, ideally in a form that non-probalistic methods can confirm (like automated tests, they either pass or not. Styling guide matters less if humans aren't going to read code, what about security constraints? Automate code complexity checks etc). And then by having all this documentation and scaffolding you can let AI agents loose to adjust to new constraints with high confidence of success.

Obviously not all of this matters if no human interaction is required (like LLM doesn't care about tools, it can use all of them interchangeably)

I wonder if or when building above application will be possible, then will it be possible to create enough artifacts (documents, tools) to support big non-vibe coded applications? The ones that already grew organically, there is no real defined specification for many of the use cases. Software is specification. When models will become smart enough to understand the application constraints, where it runs, how will likely it be used by user. Will it be feasible to hand over existing applications to AI for maintenance, or these will require a human in the loop for quite some time?

