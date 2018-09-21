
## Introduction

A few words on what JavaScript is and what you can create with it.

### What is JavaScript?

JavaScript is a general-purpose programming language.

It was originally created as a tool for website owners for adding some dynamism to their websites, that is, doing something when the user clicks the page, animating elements etc.

It's now used pretty much everywhere, not only for making websites but also desktop apps, server back-ends, mobile apps, CLI apps and so on.

### What is web development?

Web development is the set of all the technologies that are used for making websites, but as I mentioned you can also use those technologies for making full-featured apps.

Those technologies are:

- **JavaScript**: it handles all the dynamism of the application
- **HTML**: it handles the "structure" of your application, basically it lets you define which element of the page/app is inside which other element
- **CSS**: it handles the "styling" of your application, basically where elements are actually positioned, what colors they are using etc.

### Why JavaScript?

Why should you learn JavaScript instead of language X or language Y?

Well, JavaScript is the only language that's supported by web browsers! There are actually ways of "transforming", or "compiling", some other languages to JavaScript, but I think it's best to just learn JavaScript unless you already know those other languages.

So you can make websites with it, what else?

- **Back-ends**: unless you're making a static website, you'll need a server, you can write code for that in JavaScript too thanks to Node.js
- **Desktop apps**: thanks to Electron and Node.JS you can now write desktop apps using web technologies, you might be already using some of those, like Skype or Visual Studio Code
- **Mobile apps**: thanks to Cordova and PhoneGap you can also write mobile apps using web technologies
- **CLI apps**: applications that run in the terminal, JS is good for those too

The _big_ benefit of using JS for everything is that you can have a single codebase for all of the platforms you want to write apps for. Also you can focus on learning a single language, and be great with it, rather than learning 4 different languages and being just ok with those.

### When not JavaScript?

Keep in mind that JS is really fast on its own (Google and others invested billions of dollars in making it so fast) and being it general-purpose there isn't really anything that you couldn't make with it, but sometimes you just need maximum performance, for that you should use languages like C, or C++, which are closer to the metal (the CPU) being less abstract/less dynamic, but they are much harder to write programs in, and require considerably more time for doing so.

Some applications for which it would be better to use a different language:

- **Operating Systems**: an OS needs to talk to the actual hardware, and it's performance is of paramount importance
- **3D-heavy games**: here you also need the most out of your hardware, most of the times writing a 3D game fully in JS isn't the best option. You're probably ok with 2D games or simple ones though
