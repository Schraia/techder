import 'package:flutter/material.dart';

void main() {
  runApp(const TechTinderApp());
}

class TechTinderApp extends StatelessWidget {
  const TechTinderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TechTinder',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.pink,
        scaffoldBackgroundColor: const Color(0xFF1a1a1a),
        cardTheme: const CardThemeData(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class ProgrammingLanguage {
  final String name;
  final String emoji;
  final String tagline;
  final String bio;
  final String description;
  final String useCases;
  final String sampleCode;
  final List<String> resources;

  ProgrammingLanguage({
    required this.name,
    required this.emoji,
    required this.tagline,
    required this.bio,
    required this.description,
    required this.useCases,
    required this.sampleCode,
    required this.resources,
  });
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<ProgrammingLanguage> _matches = [];
  final List<ProgrammingLanguage> _skipped = [];

  final List<ProgrammingLanguage> _languages = [
    ProgrammingLanguage(
      name: 'Python',
      emoji: '🐍',
      tagline: '"Life is short, use Python"',
      bio:
          'I\'m the friendly one everyone loves. Simple, elegant, and I can do pretty much anything from web apps to AI. Want to automate your life? I\'m your snake! 🎯',
      description:
          'Python is a high-level, interpreted programming language created by Guido van Rossum in 1991. Known for its clean syntax and readability, it emphasizes code simplicity and developer productivity.',
      useCases:
          'Web Development (Django, Flask), Data Science & AI, Automation & Scripting, Scientific Computing, Game Development',
      sampleCode: '''# Hello World in Python
print("Hello, World!")

# Variables and types
name = "TechTinder"
year = 2025

# Functions
def greet(name):
    return f"Hello, {name}!"

print(greet("Developer"))''',
      resources: [
        'Python.org - Official Documentation',
        'Automate the Boring Stuff with Python',
        'Real Python Tutorials',
        'Python for Everybody (Coursera)',
      ],
    ),
    ProgrammingLanguage(
      name: 'JavaScript',
      emoji: '⚡',
      tagline: '"I run the web"',
      bio:
          'Versatile, everywhere, and a bit chaotic. I started in browsers but now I\'m on servers too! Love me or hate me, you can\'t escape me. Full-stack is my middle name! 💛',
      description:
          'JavaScript is the programming language of the web, created in 1995. It enables interactive web pages and runs on virtually every browser. With Node.js, it conquered server-side development too.',
      useCases:
          'Frontend Development, Backend (Node.js), Mobile Apps (React Native), Desktop Apps (Electron), Game Development',
      sampleCode: '''// Hello World in JavaScript
console.log("Hello, World!");

// Variables
const name = "TechTinder";
let year = 2025;

// Functions
function greet(name) {
    return `Hello, \${name}!`;
}

// Arrow functions
const add = (a, b) => a + b;

console.log(greet("Developer"));''',
      resources: [
        'MDN Web Docs - JavaScript Guide',
        'JavaScript.info',
        'Eloquent JavaScript (free book)',
        'FreeCodeCamp JavaScript Course',
      ],
    ),
    ProgrammingLanguage(
      name: 'Rust',
      emoji: '🦀',
      tagline: '"Fearless concurrency"',
      bio:
          'I\'m the safe choice - literally! Memory safety without garbage collection? That\'s me. A bit strict with rules, but hey, I prevent those nasty bugs. Performance with safety! 🛡️',
      description:
          'Rust is a modern systems programming language focused on safety, speed, and concurrency. Created in 2010, it prevents common bugs like null pointer dereferences and data races at compile time.',
      useCases:
          'Systems Programming, Game Engines, Web Assembly, CLI Tools, Embedded Systems, Blockchain',
      sampleCode: '''// Hello World in Rust
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
      resources: [
        'The Rust Programming Language (The Book)',
        'Rust by Example',
        'Rustlings - Interactive Exercises',
        'Official Rust Documentation',
      ],
    ),
    ProgrammingLanguage(
      name: 'Go',
      emoji: '🐹',
      tagline: '"Less is exponentially more"',
      bio:
          'Simple, fast, and built for the cloud! Created by Google legends, I\'m perfect for microservices and concurrent systems. No fancy features, just pure efficiency! ☁️',
      description:
          'Go (or Golang) was developed at Google in 2009 by Robert Griesemer, Rob Pike, and Ken Thompson. It\'s designed for simplicity, with built-in concurrency support via goroutines.',
      useCases:
          'Cloud Services, Microservices, DevOps Tools, Network Programming, CLI Applications, Backend APIs',
      sampleCode: '''// Hello World in Go
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
      resources: [
        'Tour of Go (Official Interactive Tutorial)',
        'Go by Example',
        'Effective Go',
        'Go Documentation',
      ],
    ),
    ProgrammingLanguage(
      name: 'TypeScript',
      emoji: '💙',
      tagline: '"JavaScript that scales"',
      bio:
          'I\'m JavaScript\'s sophisticated sibling. I add types to keep things organized and catch errors before they happen. Big projects? I\'m your type! 😎',
      description:
          'TypeScript is a typed superset of JavaScript developed by Microsoft in 2012. It adds optional static typing, classes, and interfaces, compiling to plain JavaScript.',
      useCases:
          'Large-scale Web Applications, Frontend Frameworks (Angular, React), Backend (Node.js), Mobile Development',
      sampleCode: '''// Hello World in TypeScript
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
    return `Hello, \${name}!`;
}

const dev: Developer = {
    name: "You",
    language: "TypeScript"
};''',
      resources: [
        'TypeScript Official Documentation',
        'TypeScript Handbook',
        'Execute Program - TypeScript Course',
        'TypeScript Deep Dive (free book)',
      ],
    ),
    ProgrammingLanguage(
      name: 'Swift',
      emoji: '🦅',
      tagline: '"Fast. Modern. Safe."',
      bio:
          'Apple\'s golden child! I make iOS and Mac apps beautiful and performant. Clean syntax, powerful features, and I\'m faster than you think. Ready to build the next big app? 📱',
      description:
          'Swift is a powerful programming language created by Apple in 2014 for iOS, macOS, watchOS, and tvOS development. It\'s designed to be fast, safe, and expressive.',
      useCases:
          'iOS Development, macOS Apps, watchOS Apps, tvOS Apps, Server-side Swift',
      sampleCode: '''// Hello World in Swift
print("Hello, World!")

// Variables and constants
let name = "TechTinder"
var year = 2025

// Functions
func greet(_ name: String) -> String {
    return "Hello, \\(name)!"
}

// Classes
class Developer {
    var name: String
    init(name: String) {
        self.name = name
    }
}

print(greet("Developer"))''',
      resources: [
        'Swift.org - Official Documentation',
        'Swift Playgrounds App',
        '100 Days of Swift',
        'Hacking with Swift',
      ],
    ),
    ProgrammingLanguage(
      name: 'Kotlin',
      emoji: '🎯',
      tagline: '"Concise. Safe. Interoperable."',
      bio:
          'JetBrains created me to fix Java\'s pain points. Now I\'m Google\'s preferred language for Android! Modern, concise, and 100% compatible with Java. Let\'s build something awesome! 🤖',
      description:
          'Kotlin is a modern, statically-typed programming language developed by JetBrains in 2011. Google announced it as the preferred language for Android development in 2019.',
      useCases:
          'Android Development, Backend Development, Multiplatform Mobile, Web Development, Server-side Apps',
      sampleCode: '''// Hello World in Kotlin
fun main() {
    println("Hello, World!")
    
    // Variables
    val name = "TechTinder"
    var year = 2025
    
    // Functions
    fun greet(name: String): String {
        return "Hello, \$name!"
    }
    
    // Data classes
    data class Developer(val name: String)
    
    println(greet("Developer"))
}''',
      resources: [
        'Kotlin Official Documentation',
        'Kotlin Koans',
        'Android Kotlin Fundamentals',
        'Kotlin for Java Developers',
      ],
    ),
    ProgrammingLanguage(
      name: 'C++',
      emoji: '⚙️',
      tagline: '"Performance is everything"',
      bio:
          'The OG powerhouse! Game engines? Check. Operating systems? Check. I\'m complex, yes, but when you need raw power and control, I\'m still unbeatable. Respect your elders! 💪',
      description:
          'C++ was created by Bjarne Stroustrup in 1985 as an extension of C. It provides low-level memory control with high-level features like OOP, making it ideal for performance-critical applications.',
      useCases:
          'Game Development (Unreal Engine), Systems Programming, Embedded Systems, High-Performance Computing, Financial Systems',
      sampleCode: '''// Hello World in C++
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
      resources: [
        'LearnCpp.com',
        'C++ Reference',
        'The C++ Programming Language (book)',
        'CppCon Conference Talks',
      ],
    ),
    ProgrammingLanguage(
      name: 'Java',
      emoji: '☕',
      tagline: '"Write once, run anywhere"',
      bio:
          'Enterprise is my domain! Been around since \'95 and still going strong. Verbose? Maybe. Reliable? Absolutely! Billions of devices run me. Legacy legend! 🏢',
      description:
          'Java is a class-based, object-oriented programming language developed by Sun Microsystems in 1995. It\'s known for its "write once, run anywhere" philosophy via the JVM.',
      useCases:
          'Enterprise Applications, Android Development, Backend Services, Big Data (Hadoop), Desktop Applications',
      sampleCode: '''// Hello World in Java
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
      resources: [
        'Oracle Java Tutorials',
        'Java Documentation',
        'Head First Java (book)',
        'Effective Java (book)',
      ],
    ),
    ProgrammingLanguage(
      name: 'Ruby',
      emoji: '💎',
      tagline: '"Optimize for happiness"',
      bio:
          'I\'m elegant, expressive, and all about making developers happy. Rails made me famous for web apps. Life\'s too short for ugly code - let\'s write poetry together! ✨',
      description:
          'Ruby is a dynamic, object-oriented language created by Yukihiro Matsumoto in 1995. Its philosophy emphasizes simplicity and productivity with an elegant syntax.',
      useCases:
          'Web Development (Ruby on Rails), Automation Scripts, DevOps Tools, Prototyping, Data Processing',
      sampleCode: '''# Hello World in Ruby
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
      resources: [
        'Ruby-lang.org - Official Site',
        'Try Ruby (Interactive Tutorial)',
        'The Ruby Way (book)',
        'Ruby on Rails Guides',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1a1a1a),
      body: _currentIndex == 0 ? _buildSwipeView() : _buildMatchesView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        backgroundColor: const Color(0xFF2a2a2a),
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Matches',
          ),
        ],
      ),
    );
  }

  Widget _buildSwipeView() {
  final availableLanguages =
    _languages.where((lang) => !_matches.contains(lang) && !_skipped.contains(lang)).toList();

    if (availableLanguages.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, size: 80, color: Colors.pink),
            const SizedBox(height: 20),
            const Text(
              'No more languages!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Check your ${_matches.length} matches',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      );
    }

    final currentLanguage = availableLanguages[0];

    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'TechTinder',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.pink.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '${_matches.length} matches',
                    style: const TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: _buildLanguageCard(currentLanguage),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildActionButton(
                  icon: Icons.close,
                  color: Colors.red,
                  onPressed: _skipLanguage,
                ),
                _buildActionButton(
                  icon: Icons.favorite,
                  color: Colors.pink,
                  size: 70,
                  onPressed: _likeLanguage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageCard(ProgrammingLanguage language) {
    return Card(
      color: const Color(0xFF2a2a2a),
      child: Container(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              language.emoji,
              style: const TextStyle(fontSize: 80),
            ),
            const SizedBox(height: 24),
            Text(
              language.name,
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              language.tagline,
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.grey[400],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            const Divider(color: Colors.grey),
            const SizedBox(height: 24),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  language.bio,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required Color color,
    required VoidCallback onPressed,
    double size = 60,
  }) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: 15,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Material(
        color: Colors.white,
        shape: const CircleBorder(),
        child: InkWell(
          onTap: onPressed,
          customBorder: const CircleBorder(),
          child: Container(
            width: size,
            height: size,
            alignment: Alignment.center,
            child: Icon(icon, color: color, size: size * 0.5),
          ),
        ),
      ),
    );
  }

  void _skipLanguage() {
    final availableLanguages =
        _languages.where((lang) => !_matches.contains(lang) && !_skipped.contains(lang)).toList();

    if (availableLanguages.isNotEmpty) {
      setState(() {
        // Add the current language to skipped so it won't appear again
        _skipped.add(availableLanguages[0]);
      });
    }
  }

  void _likeLanguage() {
    final availableLanguages =
        _languages.where((lang) => !_matches.contains(lang) && !_skipped.contains(lang)).toList();

    if (availableLanguages.isNotEmpty) {
      setState(() {
        _matches.add(availableLanguages[0]);
      });
    }
  }

  Widget _buildMatchesView() {
    if (_matches.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.favorite_border, size: 80, color: Colors.grey),
            const SizedBox(height: 20),
            const Text(
              'No matches yet',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Start swiping to find your perfect language!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Your Matches',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.85,
              ),
              itemCount: _matches.length,
              itemBuilder: (context, index) {
                final language = _matches[index];
                return _buildMatchCard(language);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMatchCard(ProgrammingLanguage language) {
    return Card(
      color: const Color(0xFF2a2a2a),
      child: InkWell(
        onTap: () => _openProfile(language),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                language.emoji,
                style: const TextStyle(fontSize: 50),
              ),
              const SizedBox(height: 12),
              Text(
                language.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Text(
                  language.tagline,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[400],
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openProfile(ProgrammingLanguage language) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProfileScreen(language: language),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final ProgrammingLanguage language;

  const ProfileScreen({Key? key, required this.language}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1a1a1a),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2a2a2a),
        title: Text(language.name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: const Color(0xFF2a2a2a),
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Text(
                    language.emoji,
                    style: const TextStyle(fontSize: 100),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    language.name,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    language.tagline,
                    style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            _buildSection(
              'About',
              language.description,
            ),
            _buildSection(
              'Common Use Cases',
              language.useCases,
            ),
            _buildCodeSection(
              'Sample Code',
              language.sampleCode,
            ),
            _buildResourcesSection(
              'Learning Resources',
              language.resources,
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCodeSection(String title, String code) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color(0xFF2a2a2a),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              code,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.greenAccent,
                fontFamily: 'monospace',
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildResourcesSection(String title, List<String> resources) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
          const SizedBox(height: 12),
          ...resources.map((resource) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.book,
                      color: Colors.pink,
                      size: 20,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        resource,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
