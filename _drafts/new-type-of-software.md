---
layout: post
title: "A new type of software"
---

TL;DR: Generative Artifical Intelligence (AI) together with agentic loop can already yield a good results during software development, but far from being a silver bullet. Will there be a decent chunk of time when human-written software still requires a developer in the loop, and software created from the scratch by automation will be able to grow in complixity relying only on generative / agentic skills.

Living in an era of AI hype it is very hard to understand how the real capabilities of Large Language Models(LLM)-assisted coding progress. And creating fakes never was as easy as it is now.

From a personal experience LLM-assistance is great in the areas of knowledge search with addition of retrieval-augmented generation (RAG), as long as you double-check the sources. Any area, where you are not an expert in, you have a pretty good chance that LLM gives a good result, as you wouldn't do better anyway (not within a short time). 

In software development you no longer need to spend time creating small throwaway snippets, scripts or tools (like writing shell scripts yourself - why?). That assumes you still can review and validate the code that it doesn't do anything rogue, and have no compliance or quality requirements.

But for big and established code bases there are still challenges. Human needs to feed appropriate context to the agent with all the information required to implement a feature - and sometimes it goes beyond the explanation that code base can tell. And I'm yet to see if there is a possibility to retrofit such design / architecture documentation that is enough for agents to be at 99% of what is needed, but not too verbose to leave a room in context window to do useful work.

It is certain that there is a progress. And with sufficient effort a lot of current challenges with context size and speed of generation should be eventually solved for almost all existing applications. The question though is how quickly will it be solved, and will it be sustainable from resource usage (price) perspective to replace humans. Will there be an era of clear separation of agentic-built and human-built applications?

Every month there is something new, for now the most promising way to build software with agents is to bring structure into vibe-coding. Context window is a constraint, so every task must be split into bite-sized chunks. It needs to include the task itself plus the information about application design, conventions, tools used, platforms or infrastructure it runs on.

When LLM builds software from scratch, iterating on your ideas, it should be able to diligently summarise and document this context for subsequent runs. Keeping important context documentation up to date, writing down all the decisions made. And let it do all the things agentic-first - like abstractions or design patterns doesn't have to be understood by humans easily, as long as it does the job. It doesn't mean that software will be optimised, no, but it will work and may be good enough.

It easy to imagine a situation where applications reach complexity that no human is able to reasonably grasp, but agents happily live with it and modify it. 

// Will the complexity of slop vibe coded applications grow as capabilities of models grow as well, but still requiring humans to guide our agentic friends.

// Do non-vibecoded applications become an applications that LLM will have struggle to maintain by themselves?

// AI hype - not everything is being done as shiny as some people make it look, but it is certainly helpful.

// Great for search and RAG. Great for any area where you are not an expert in - you are happy to help AI with any little problems it has, because you wouldn't do it better anyway, and especially not in this time frame.
// For smallish task like throw-away scripts or mini-apps is definitely yes, where quality and compliance and other things don't matter as much.

// Somewhat on the topic about losing a job versus transforming a job, let's imagine an application that...

// Considering that other smart people say that we likely will keep grinding improving models, approaching either AGI or somewhat bigger context windows and better success rates of model guessing from the input what the user wants (and improvement of tools that prepare context and other things)

There are multiple approaches to build applications with LLM, and one that looks so far the most promising is somewhat structured vibe-coding. For now context window is a problem, which is for decently-sized application modern thinking model runs out pretty quickly. There must be the way to split all the application context into bite-sized chunks - information about application design, conventions, tools used, platforms or infrastructure it runs on. So when you provide LLM with specification, it build application from ground up, documents all the steps and keeps writing and updating documentation as it goes. And writes all the decisions down, ideally in a form that non-probalistic methods can confirm (like automated tests, they either pass or not. Styling guide matters less if humans aren't going to read code, what about security constraints? Automate code complexity checks etc). And then by having all this documentation and scaffolding you can let AI agents loose to adjust to new constraints with high confidence of success.

Obviously not all of this matters if no human interaction is required (like LLM doesn't care about tools, it can use all of them interchangeably)

I wonder if or when building above application will be possible, then will it be possible to create enough artifacts (documents, tools) to support big non-vibe coded applications? The ones that already grew organically, there is no real defined specification for many of the use cases. Software is specification. When models will become smart enough to understand the application constraints, where it runs, how will likely it be used by user. Will it be feasible to hand over existing applications to AI for maintenance, or these will require a human in the loop for quite some time?

TL;DR: After vibecoded applications reach a good scale and quality levels, will LLM be able to maintain old human-written application by themselves? Or these will stay as AI-augmented chores for humans?

Will there be a new type of agentic-built agentic-driven applications? Shall see
