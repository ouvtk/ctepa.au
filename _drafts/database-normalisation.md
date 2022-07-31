---
layout: post
title: "Interactive table normalisation"
---

- To be able to check if table/tables conform with 1NF - 3NF (And probably BCNF).
- To support additional dependencies for 4NF, 5NF.

- Generate data using fake data generation:
    - Keep dependencies between objects.
    - Add duplicate attributes.
    - Interweave random attributes.

First approach:
  - Have single table with all the attributes.
  - Be able to drag and drop columns to a specific area to create a new table.
  - Be able to drag any column from new table back.
  - Probably don't allow to drag last column from the original table.

Second approach:
  - Dragging probably will be confusing, as columns must be cloned as well. It is fine when you can press Ctrl on PC/Laptop, but what do you do on mobile?
  - Aim to use arrows / buttons to move headers around, and clone columns.
  - This removes dependency on 'dragula' and simplifies preact implementation side.

{% include_relative _table-snippet.html %}