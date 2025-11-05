class ProgrammingLanguage {
  final String name;
  final String emoji;
  final String tagline;
  final String bio;
  final String description;
  final String useCases;
  final String sampleCode;
  final String difficulty;
  final List<String> tags;
  final List<String> resources;
  final List<String> roadmap; // New field added

  ProgrammingLanguage({
    required this.name,
    required this.emoji,
    required this.tagline,
    required this.bio,
    required this.description,
    required this.useCases,
    required this.sampleCode,
    required this.difficulty,
    required this.tags,
    required this.resources,
    required this.roadmap, // New field required
  });
}

final List<ProgrammingLanguage> allLanguages = [
  ProgrammingLanguage(
    name: 'Python',
    emoji: '🐍',
    tagline:
        "I'm everyone's type: Simple, helpful, and I can do *anything*. Swipe right for AI & automation. 🧠✨",
    bio:
        'I\'m the friendly one everyone loves. Simple, elegant, and I can do pretty much anything from web apps to AI. Want to automate your life? I\'m your snake! 🎯',
    description:
        'Python is a high-level, interpreted programming language created by Guido van Rossum in 1991. Known for its clean syntax and readability, it emphasizes code simplicity and developer productivity.',
    useCases:
        'Web Development (Django, Flask), Data Science & AI, Automation & Scripting, Scientific Computing, Game Development',
    sampleCode: r'''# Hello World in Python
print("Hello, World!")

# Variables and types
name = "TechTinder"
year = 2025

# Functions
def greet(name):
    return f"Hello, {name}!"

print(greet("Developer"))''',
    difficulty: 'Easy',
    tags: ['Procedural', 'Object-oriented', 'Functional'],
    resources: [
      'Python.org - https://www.python.org/',
      'Automate the Boring Stuff - https://automatetheboringstuff.com/',
      'Real Python - https://realpython.com/',
      'Python for Everybody (Coursera) - https://www.coursera.org/specializations/python',
    ],
    roadmap: [
      'Master the Core Syntax, variables, loops, and conditional statements.',
      'Dive into Data Structures: Lists, Dictionaries, Sets, and Tuples.',
      'Explore Web/Automation: Build a basic web scraper using the `requests` library or an automated script.',
      'Data Science Fundamentals: Learn to use Pandas for data manipulation and NumPy for numerical operations.',
      'Advanced Projects: Develop a machine learning model using Scikit-learn or a powerful backend using Django.',
    ],
  ),
  ProgrammingLanguage(
    name: 'JavaScript',
    emoji: '⚡',
    tagline:
        "Commitment issues? I'm already everywhere you go. I run the *entire* web (and the server). Full-stack, baby. 🌐🔥",
    bio:
        'Versatile, everywhere, and a bit chaotic. I started in browsers but now I\'m on servers too! Love me or hate me, you can\'t escape me. Full-stack is my middle name! 💛',
    description:
        'JavaScript is the programming language of the web, created in 1995. It enables interactive web pages and runs on virtually every browser. With Node.js, it conquered server-side development too.',
    useCases:
        'Frontend Development, Backend (Node.js), Mobile Apps (React Native), Desktop Apps (Electron), Game Development',
    sampleCode: r'''// Hello World in JavaScript
console.log("Hello, World!");

// Variables
const name = "TechTinder";
let year = 2025;

// Functions
function greet(name) {
    return `Hello, ${name}!`;
}

// Arrow functions
const add = (a, b) => a + b;

console.log(greet("Developer"));''',
    difficulty: 'Normal',
    tags: ['Event-driven', 'Functional', 'Object-oriented'],
    resources: [
      'MDN Web Docs - https://developer.mozilla.org/en-US/docs/Web/JavaScript',
      'JavaScript.info - https://javascript.info/',
      'Eloquent JavaScript - https://eloquentjavascript.net/',
      'FreeCodeCamp JS Course - https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/',
    ],
    roadmap: [
      'Master Modern JS Fundamentals (ES6+): functions, closures, promises, and array methods.',
      'DOM Manipulation: Learn how to read and modify the Document Object Model to create interactive webpages.',
      'Framework Specialization: Choose a major framework (React, Angular, or Vue) and build a multi-component app.',
      'Backend with Node.js: Learn server-side programming using Node.js and Express to build a RESTful API.',
      'TypeScript & Tooling: Introduce TypeScript for large-scale development and master module bundlers like Webpack/Vite.',
    ],
  ),
  ProgrammingLanguage(
    name: 'Rust',
    emoji: '🦀',
    tagline:
        "I'm safe but strict, but trust me... I won't let you down. Only looking for long-term, high-performance relationships. 🛡️🚀",
    bio:
        'I\'m the safe choice - literally! Memory safety without garbage collection? That\'s me. A bit strict with rules, but hey, I prevent those nasty bugs. Performance with safety! 🛡️',
    description:
        'Rust is a modern systems programming language focused on safety, speed, and concurrency. Created in 2010, it prevents common bugs like null pointer dereferences and data races at compile time.',
    useCases:
        'Systems Programming, Game Engines, Web Assembly, CLI Tools, Embedded Systems, Blockchain',
    sampleCode: r'''// Hello World in Rust
fn main() {
    println!("Hello, World!");
    
    // Variables
    let name = "TechTinder";
    let year: i32 = 2025;
    
    // Function
    let greeting = greet("Developer");
    println!("{}", greeting);
}

fn greet(name: &str) -> String {
    format!("Hello, {}!", name)
}''',
    difficulty: 'Hard',
    tags: ['Systems', 'Functional', 'Concurrent'],
    resources: [
      'The Rust Programming Language (The Book) - https://doc.rust-lang.org/book/',
      'Rust by Example - https://doc.rust-lang.org/rust-by-example/',
      'Rustlings - https://github.com/rust-lang/rustlings',
      'Rust official - https://www.rust-lang.org/learn',
    ],
    roadmap: [
      'Basics & Ownership: Master fundamental syntax and the core concept of Ownership, Borrowing, and Lifetimes.',
      'Structs, Enums, and Pattern Matching: Learn how to define custom types and use pattern matching for flow control.',
      'Concurrency & Fearless Programming: Explore Rust\'s concurrency primitives like threads and message passing.',
      'Writing Command Line Tools: Build a practical CLI utility using crates like `clap` to interact with the OS.',
      'WebAssembly or Game Development: Implement a component in WebAssembly for the browser or start learning a game engine like Bevy.',
    ],
  ),
  ProgrammingLanguage(
    name: 'Go',
    emoji: '🐹',
    tagline:
        "A minimalist from Google. I keep things simple, fast, and I scale under pressure. Let's build a cloud together. ☁️💻",
    bio:
        'Simple, fast, and built for the cloud! Created by Google legends, I\'m perfect for microservices and concurrent systems. No fancy features, just pure efficiency! ☁️',
    description:
        'Go (or Golang) was developed at Google in 2009 by Robert Griesemer, Rob Pike, and Ken Thompson. It\'s designed for simplicity, with built-in concurrency support via goroutines.',
    useCases:
        'Cloud Services, Microservices, DevOps Tools, Network Programming, CLI Applications, Backend APIs',
    sampleCode: r'''// Hello World in Go
package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
    
    // Variables
    name := "TechTinder"
    year := 2025
    
    // Functions
    greeting := greet("Developer")
    fmt.Println(greeting)
}

func greet(name string) string {
    return fmt.Sprintf("Hello, %s!", name)
}''',
    difficulty: 'Normal',
    tags: ['Procedural', 'Concurrent'],
    resources: [
      'Tour of Go - https://tour.golang.org/',
      'Go by Example - https://gobyexample.com/',
      'Effective Go - https://go.dev/doc/effective_go',
      'Go Documentation - https://go.dev/doc/',
    ],
    roadmap: [
      'Core Syntax & Packages: Master basic syntax, types, and using standard library packages (fmt, net/http).',
      'Concurrency (Goroutines & Channels): Deep dive into Go\'s key feature: concurrent programming with Goroutines and Channels.',
      'Web Services: Build a highly performant REST API using the standard library or a framework like Gin.',
      'Data Persistence: Learn database interactions (SQL, NoSQL) using Go\'s official drivers.',
      'Cloud Deployment: Build and containerize a microservice using Docker and deploy it to a cloud platform.',
    ],
  ),
  ProgrammingLanguage(
    name: 'TypeScript',
    emoji: '💙',
    tagline:
        "I'm JavaScript with my life together. Organized, planned, and I catch errors before you even make them. The mature upgrade. ✅💙",
    bio:
        'I\'m JavaScript\'s sophisticated sibling. I add types to keep things organized and catch errors before they happen. Big projects? I\'m your type! 😎',
    description:
        'TypeScript is a typed superset of JavaScript developed by Microsoft in 2012. It adds optional static typing, classes, and interfaces, compiling to plain JavaScript.',
    useCases:
        'Large-scale Web Applications, Frontend Frameworks (Angular, React), Backend (Node.js), Mobile Development',
    sampleCode: r'''// Hello World in TypeScript
console.log("Hello, World!");

// Types
const name: string = "TechTinder";
let year: number = 2025;

// Interfaces
interface Developer {
    name: string;
    language: string;
}

// Functions with types
function greet(name: string): string {
    return `Hello, ${name}!`;
}

const dev: Developer = {
    name: "You",
    language: "TypeScript"
};''',
    difficulty: 'Normal',
    tags: ['Typed', 'Object-oriented', 'Functional'],
    resources: [
      'TypeScript Official - https://www.typescriptlang.org/',
      'TypeScript Handbook - https://www.typescriptlang.org/docs/handbook/intro.html',
      'Understanding TypeScript (course) - https://www.udemy.com/course/understanding-typescript/',
      'TypeScript Deep Dive - https://basarat.gitbook.io/typescript/',
    ],
    roadmap: [
      'Type Fundamentals: Understand primitive types, `any` vs `unknown`, type inference, and basic functions.',
      'Interfaces and Custom Types: Master defining complex data structures using Interfaces and Type Aliases.',
      'Advanced Utility Types: Learn about Generics, Mapped Types, and Conditional Types for flexible, reusable code.',
      'Integration with Frameworks: Apply TypeScript rigorously in a React/Angular/Node.js project to enforce type safety.',
      'Build Tools & Configuration: Become proficient with `tsconfig.json` settings and bundling TypeScript for production.',
    ],
  ),
  ProgrammingLanguage(
    name: 'Swift',
    emoji: '🦅',
    tagline:
        "Apple's exclusive. If you like sleek, high-performing apps on your iPhone, I'm the only call you need to make. 📱🍎",
    bio:
        'Apple\'s golden child! I make iOS and Mac apps beautiful and performant. Clean syntax, powerful features, and I\'m faster than you think. Ready to build the next big app? 📱',
    description:
        'Swift is a powerful programming language created by Apple in 2014 for iOS, macOS, watchOS, and tvOS development. It\'s designed to be fast, safe, and expressive.',
    useCases:
        'iOS Development, macOS Apps, watchOS Apps, tvOS Apps, Server-side Swift',
    sampleCode: r'''// Hello World in Swift
print("Hello, World!")

// Variables and constants
let name = "TechTinder"
var year = 2025

// Functions
func greet(_ name: String) -> String {
    return "Hello, \(name)!"
}

// Classes
class Developer {
    var name: String
    init(name: String) {
        self.name = name
    }
}

print(greet("Developer"))''',
    difficulty: 'Normal',
    tags: ['Object-oriented', 'Protocol-oriented'],
    resources: [
      'Swift.org - https://swift.org/',
      'Swift Playgrounds - https://www.apple.com/swift/playgrounds/',
      '100 Days of Swift - https://www.hackingwithswift.com/100',
      'Hacking with Swift - https://www.hackingwithswift.com/',
    ],
    roadmap: [
      'Swift Fundamentals: Master Optionals, closures, structs, and classes.',
      'iOS Basics (UIKit/SwiftUI): Start building small apps and choose either UIKit or modern SwiftUI for UI development.',
      'Core Frameworks: Learn about core Apple frameworks like Foundation, Core Data, and Grand Central Dispatch (GCD).',
      'Protocol-Oriented Programming (POP): Understand Swift\'s philosophy of designing with protocols and extensions.',
      'Advanced Features: Explore error handling, generics, and implement unit and UI testing.',
    ],
  ),
  ProgrammingLanguage(
    name: 'Kotlin',
    emoji: '🎯',
    tagline:
        "Google's favorite for Android. I fix all of Java's red flags. Concise, modern, and 100% compatible with your ex. 🤖✨",
    bio:
        'JetBrains created me to fix Java\'s pain points. Now I\'m Google\'s preferred language for Android! Modern, concise, and 100% compatible with Java. Let\'s build something awesome! 🤖',
    description:
        'Kotlin is a modern, statically-typed programming language developed by JetBrains in 2011. Google announced it as the preferred language for Android development in 2019.',
    useCases:
        'Android Development, Backend Development, Multiplatform Mobile, Web Development, Server-side Apps',
    sampleCode: r'''// Hello World in Kotlin
fun main() {
    println("Hello, World!")
    
    // Variables
    val name = "TechTinder"
    var year = 2025
    
    // Functions
    fun greet(name: String): String {
        return "Hello, $name!"
    }
    
    // Data classes
    data class Developer(val name: String)
    
    println(greet("Developer"))
}''',
    difficulty: 'Normal',
    tags: ['Object-oriented', 'Functional'],
    resources: [
      'Kotlin Official - https://kotlinlang.org/',
      'Kotlin Koans - https://play.kotlinlang.org/koans/overview',
      'Android Kotlin Guides - https://developer.android.com/kotlin',
      'Kotlin Java Interop - https://kotlinlang.org/docs/java-to-kotlin-interop.html',
    ],
    roadmap: [
      'Syntax & Null Safety: Master the concise syntax, functions, and the non-negotiable null safety features.',
      'Object-Oriented & Data Classes: Learn about classes, interfaces, inheritance, and the convenience of data classes.',
      'Android Development: Dive into building a mobile app using Android SDK and Jetpack Compose/Views.',
      'Coroutines: Master Kotlin\'s structured concurrency model for asynchronous programming.',
      'Multiplatform Projects: Explore Kotlin Multiplatform Mobile (KMM) for sharing code between Android and iOS.',
    ],
  ),
  ProgrammingLanguage(
    name: 'C++',
    emoji: '⚙️',
    tagline:
        "The OG powerhouse. I'm complex, require full control, but I deliver raw, unbeatable *performance*. Respect your elders. ⚙️🏎️",
    bio:
        'The OG powerhouse! Game engines? Check. Operating systems? Check. I\'m complex, yes, but when you need raw power and control, I\'m still unbeatable. Respect your elders! 💪',
    description:
        'C++ was created by Bjarne Stroustrup in 1985 as an extension of C. It provides low-level memory control with high-level features like OOP, making it ideal for performance-critical applications.',
    useCases:
        'Game Development (Unreal Engine), Systems Programming, Embedded Systems, High-Performance Computing, Financial Systems',
    sampleCode: r'''// Hello World in C++
#include <iostream>
#include <string>

using namespace std;

int main() {
    cout << "Hello, World!" << endl;
    
    // Variables
    string name = "TechTinder";
    int year = 2025;
    
    // Functions
    auto greet = [](string name) {
        return "Hello, " + name + "!";
    };
    
    cout << greet("Developer") << endl;
    return 0;
}''',
    difficulty: 'Hard',
    tags: ['Procedural', 'Object-oriented', 'Systems'],
    resources: [
      'LearnCpp - https://www.learncpp.com/',
      'C++ Reference - https://en.cppreference.com/w/',
      'The C++ Programming Language (Bjarne Stroustrup) - https://www.stroustrup.com/',
      'CppCon - https://cppcon.org/',
    ],
    roadmap: [
      'Master the Basics: Learn fundamental C++ syntax, variables, data types, and control flow.',
      'Deep Dive into OOP: Understand Classes, Objects, Inheritance, Polymorphism, and Encapsulation.',
      'Explore Memory Management: Master Pointers, References, and Manual Memory Management (malloc/free or new/delete).',
      'Standard Template Library (STL): Become proficient with containers (Vector, Map), algorithms, and iterators.',
      'Systems & Performance: Study low-level programming concepts, build a small game engine or a high-performance utility.',
    ],
  ),
  ProgrammingLanguage(
    name: 'Java',
    emoji: '☕',
    tagline:
        "I'm an Enterprise Legend. I'm reliable, everywhere, and I've been running the world since '95. Looking for serious, corporate commitment. 🏢☕",
    bio:
        'Enterprise is my domain! Been around since \'95 and still going strong. Verbose? Maybe. Reliable? Absolutely! Billions of devices run me. Legacy legend! 🏢',
    description:
        'Java is a class-based, object-oriented programming language developed by Sun Microsystems in 1995. It\'s known for its "write once, run anywhere" philosophy via the JVM.',
    useCases:
        'Enterprise Applications, Android Development, Backend Services, Big Data (Hadoop), Desktop Applications',
    sampleCode: r'''// Hello World in Java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
        
        // Variables
        String name = "TechTinder";
        int year = 2025;
        
        // Methods
        String greeting = greet("Developer");
        System.out.println(greeting);
    }
    
    public static String greet(String name) {
        return "Hello, " + name + "!";
    }
}''',
    difficulty: 'Normal',
    tags: ['Object-oriented'],
    resources: [
      'Oracle Java Tutorials - https://docs.oracle.com/javase/tutorial/',
      'Java Documentation - https://docs.oracle.com/en/java/',
      'Head First Java - https://www.oreilly.com/library/view/head-first-java/0596009208/',
      'Effective Java - https://www.pearson.com/store/p/effective-java/P100000528830',
    ],
    roadmap: [
      'Core Java (OOP): Master classes, interfaces, inheritance, and the Java Collections Framework (List, Map).',
      'JVM & Memory: Understand the Java Virtual Machine, garbage collection, and exception handling.',
      'Enterprise Development (Spring): Learn the Spring Boot framework to build robust backend microservices.',
      'Concurrency & Multithreading: Explore Java\'s threading model and concurrent utilities.',
      'Testing & Ecosystem: Master unit testing with JUnit and explore tools like Maven or Gradle for dependency management.',
    ],
  ),
  ProgrammingLanguage(
    name: 'Ruby',
    emoji: '💎',
    tagline:
        "I value your happiness above all else. I'm elegant, expressive, and I turn ideas into web apps (Rails) with *joy*. 💖💎",
    bio:
        'I\'m elegant, expressive, and all about making developers happy. Rails made me famous for web apps. Life\'s too short for ugly code - let\'s write poetry together! ✨',
    description:
        'Ruby is a dynamic, object-oriented language created by Yukihiro Matsumoto in 1995. Its philosophy emphasizes simplicity and productivity with an elegant syntax.',
    useCases:
        'Web Development (Ruby on Rails), Automation Scripts, DevOps Tools, Prototyping, Data Processing',
    sampleCode: r'''# Hello World in Ruby
puts "Hello, World!"

# Variables
name = "TechTinder"
year = 2025

# Methods
def greet(name)
  "Hello, #{name}!"
end

# Blocks and iterators
3.times do |i|
  puts "Iteration #{i}"
end

puts greet("Developer")''',
    difficulty: 'Easy',
    tags: ['Object-oriented', 'Scripting'],
    resources: [
      'Ruby-lang.org - https://www.ruby-lang.org/en/',
      'Try Ruby - https://try.ruby-lang.org/',
      'The Ruby Way - https://pragprog.com/titles/ruby4/the-ruby-way/',
      'Ruby on Rails Guides - https://guides.rubyonrails.org/',
    ],
    roadmap: [
      'Ruby Fundamentals: Master core language features, including expressive syntax, blocks, procs, and lambdas.',
      'Object-Oriented Ruby: Deepen understanding of classes, modules, and metaprogramming features.',
      'Web Development (Rails): Start building a dynamic web application using the Ruby on Rails framework.',
      'Databases & ActiveRecord: Learn how to interact with databases using Rails\' Object-Relational Mapping (ORM), ActiveRecord.',
      'Testing & Deployment: Master RSpec for testing and deploy a Rails application to a service like Heroku or AWS.',
    ],
  ),
];