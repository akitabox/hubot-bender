# Hubot-bender

Hubot script to impersonate Bender from Futurama

See [`src/bender.coffee`](src/bender.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install @akitabox/hubot-bender --save`

Then add **hubot-bender** to your `external-scripts.json`:

```json
[
  "@akitabox/hubot-bender"
]
```

## Commands

`hubot bender on` - Starts responding to room messages with bender quotes

`hubot bender off` - Stops responding to room messages with bender quotes

## Sample Interaction

``` bash
user1>> hubot bender on
hubot>> I'm back baby!
user1>> noot noot
hubot>> I'll punchify your face
```

``` bash
user1>> hubot bender off
hubot>> I am bender... please insert gerter
user1>> No more bender :(
```

## NPM Module

[hubot-bender](https://www.npmjs.com/package/@akitabox/hubot-bender)
