# List of prompts to generate Postal Codes rules and JS

Our goal is to have a conversation with ChatGPT to:

- understand the rules of postal codes in France
- create Gherkin scenarios with those rules
- create corresponding JS code
- run the test

First let's ask a basic functional question about postal codes in France:

```text
Hey, I'd like to create a Gherkin file to test post codes in France. First, can you tell me all the rules that apply to a post code there?
```

Then ask ChatGPT to create the corresponding scenarios in Gherkin language:

```text
Pretty cool. Can you generate a Gherkin code for me?
```

As the answer is not complete, ask to add all the rule:

```text
Well, add like you to add all the rules you stated in the first answer you gave me.
```

As it writes rules and not example, ask to transform the code into example:

```text
Gherkin scenarios are mostly about examples, right? Wouldn't it be better is you add examples of post codes, instead of stating the rules?
```

Good examples, but some wrong cases are missing. Let's add an example to test it's only numbers:

```text
Maybe you can add an example with letters?
```

Also an example where post code is too long:

```text
And also an example with 6 digits?
```

## Let's get to Node.JS

Let's simply ask ChatGPT to get Node.JS code:

```text
I'd like to implement this in Node.JS, can you help?
```

It implemented the code in plan JS... but experts knows that cucumber.JS does a better job.

```text
Maybe it's easier to use cucumber?
```

Oops, ChatGPT rolled-back to Gherkin rules... Let's be more explicit:

```text
Using the "cucumber" module, in JS, importing the "Given", "When" and "Then" classes, can you write the implementation of the 1st scenario in JS?
```

It partially does the job, let's ask to do that for all scenarios:

```text
Can you add all scenarios to this JS code, please?
```

Well, if you try this in code, it's not the last version of cucumber. Let's fix:

```text
Hmmm the library is @cucumber/cucumber, no?
```

Not bad, but I prefer ES6 syntax. Maybe it can do the job?

```text
Cool, but I prefer ES6 style. Can you updatE?
```

## Wait a minute... maybe model is biased?

Looks like ChatGPT did not take into consideration people living in Oversea Territories... Let's fix:

```text
What about Guadeloupe?
```

It fixed the JS code... not the Gherkin. 

```text
Maybe we update the gherkin example first, no?
```

## Debug its on code

In the generated code, ChatGPT has a bug... It's visible when you run the scenarios with `npm test`.

As you noticed is, you can ask it to debug its own code.

```
There's a bug in the scenario France postal code starting with 990
```

## Trying to trick ChatGPT

```text
What about Monaco?
```

