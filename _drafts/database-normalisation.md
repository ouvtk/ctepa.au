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

{% include_relative table-snippet.html %}