# 📁 RUBY CALENDAR CLI v2.0

![Ruby](https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white)

This is a professional **Command Line Interface (CLI)** calendar application. It focuses on clean Object-Oriented Programming and high-quality terminal User Experience with animations and colors.

---

## 💻 TECH STACK

* **Language:** Ruby 3.x
* **Libraries:** `Time`, `Date`, `CSV`
* **UI/UX:** ANSI Color Codes & System CLI control



---

## 🚀 KEY FEATURES

### 1. Advanced Event Management
* **Calculations:** Automatic end-time and duration tracking.
* **Status:** Real-time checking if events are `past`, `future`, or `starting soon`.
* **Inheritance:** Specialized `WorkEvent` class for professional meetings.

### 2. Premium Terminal UI
* **Dynamic Loading:** Visual progress bars when processing data.
* **Auto-Clean:** Screen clears automatically between steps for a "modern app" feel.
* **Color Coding:** Success messages in Green, warnings in Red, and titles in Cyan.

### 3. Visual Calendar
* A complete 31-day grid rendered in ASCII.
* Events are automatically pinned to their respective dates with time markers.



---

## 🛠 PROJECT STRUCTURE

| File | Responsibility |
| :--- | :--- |
| `app.rb` | Main entry point & Orchestrator |
| `lib/user.rb` | User profiles and search engine |
| `lib/event.rb` | Core logic and time calculations |
| `lib/work_event.rb` | Workplace specific logic (Inheritance) |
| `lib/event_creator.rb` | Interactive user prompt system |
| `lib/calendar_displayer.rb` | ASCII Graphics rendering engine |

---

## 📥 INSTALLATION

1. **Clone the project**
   ```bash
   git clone [https://github.com/your-username/ruby-calendar.git](https://github.com/your-username/ruby-calendar.git)