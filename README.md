[![Build Status](https://travis-ci.org/RizAli/Boris-Bikes.svg)](https://travis-ci.org/RizAli/Boris-Bikes)
[![Code Climate](https://codeclimate.com/repos/5540a194e30ba021fa00f2a3/badges/2f60a295317b385459ba/gpa.svg)](https://codeclimate.com/repos/5540a194e30ba021fa00f2a3/feed)
[![Test Coverage](https://codeclimate.com/repos/5540a194e30ba021fa00f2a3/badges/2f60a295317b385459ba/coverage.svg)](https://codeclimate.com/repos/5540a194e30ba021fa00f2a3/feed)

# BDD and OOD Boris-Bikes

The goal of this project to demonstrate understanding of

- Behaviour Driven Development (BDD)
- How BDD relates to Test Driven Development (TDD)
- The process of domain modeling for Object-Oriented Design(OOD)

# Project Overview
Create a simple system to support [Boris Bikes in London](https://en.wikipedia.org/wiki/Barclays_Cycle_Hire).

The system will allow members of the public to remove and return boris bikes from docking stations. Occasionally the bikes may break, and then they will be unavailable for rental. There will be a garage to fix broken bikes. Finally, there will be a van to move the bikes between the stations and the garage so there are working bikes for members of the public to use.

User stories are made by discussing the project requirements with the customer. The client bellieves the following user stories will deliver value to the end users of the system:

```
As a member of the public,
So that I can get across town,
I'd like to get a working bike from a docking station.

As a member of the public,
So that I am not charged for longer than necessary,
I'd like to return a bike to a docking station.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to only release working bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).

As a member of the public,
So that I am not frustrated trying to find a bike,
I'd like to know if a docking station has working bikes available.

As a member of the public,
So that I am not frustrated trying to return a bike,
I'd like to know if a docking station has reached capacity and cannot receive any more bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to collect working bikes from garages and distribute them to docking stations.
```
As the objective is to build a **simple**, **manageable** features such as payment has been omitted.

Domain Model (Boris bikes)
- describes teh objects in a system, and
- describes how those objects interact.


# Approach

Good starting point is to identify the nouns in a paragraph that describes the system specification.


> We are building a system that manages **bikes** that can be rented by **users** from **docking stations** and returned there at the end of the **rental**. The **bikes** can break while being used, in which case they will not be available for **rental** after they are returned. There is a **garage** that can fix broken **bikes**. A **van** is used to move broken **bikes** from the **stations** to the **garage**. It can also be used to take fixed **bikes** back to the **station(s)**. The **van**, all **stations** and the **garage** have fixed **capacity**, so they cannot take more **bikes** than they can hold.


Classes will implement a number of methods. To get an idea of what they may be, one can take a look at the verbs in the description.

> We are building a system that manages bikes that can be **rented** by users from docking stations and **returned** there at the end of the rental. The bikes can **break** while being **used**, in which case they will not be available for rental after they are **returned**. There is a garage that can **fix** broken bikes. A van is used to **move** broken bikes from the stations to the garage. It can also be used to **take** fixed bikes back to the station(s). The van, all stations and the garage have fixed capacity, so they cannot **take** more bikes that they can **hold**.



# BDD?
BDD is a process that relates Acceptance Tests (also known as Feature Tests) with Unit Tests. An Acceptance Test describes a high-level behaviour of the system and is usually closely related to a User Story. A Unit Test is a low-level test of a single component, usually created using TDD.

BDD is all about the process of moving from User Stories to Feature (a.k.a. Acceptance) Tests, then from Feature Tests to Unit Tests, and then from Unit Tests to actual Features.

The BDD cycle indicates how we start with a failing acceptance test, we create a related failing unit test, fix and refactor at the unit level and then fix and refactor at the acceptance level.


As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to only release working bikes.


