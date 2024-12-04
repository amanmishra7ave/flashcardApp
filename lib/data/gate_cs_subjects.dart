import '../models/subject_model.dart';

class GateCSSubjects {
  static List<Subject> getSubjects() {
    return [
      Subject(
        id: 'cn',
        name: 'Computer Networks',
        icon: '🌐',
        flashcards: [
          Flashcard(
            id: 'cn1',
            question: 'What is the OSI Model?',
            answer: 'Open Systems Interconnection Model with 7 layers: Physical, Data Link, Network, Transport, Session, Presentation, Application',
          ),
          Flashcard(
            id: 'cn2',
            question: 'Difference between TCP and UDP?',
            answer: 'TCP: Connection-oriented, reliable, slower\nUDP: Connectionless, unreliable, faster',
          ),
        ],
      ),
      Subject(
        id: 'os',
        name: 'Operating Systems',
        icon: '💻',
        flashcards: [
          Flashcard(
            id: 'os1',
            question: 'Define Deadlock',
            answer: 'A situation where processes are unable to proceed because each is waiting for another to release a resource',
          ),
          Flashcard(
            id: 'os2',
            question: 'What is Paging?',
            answer: 'A memory management scheme that eliminates the need for contiguous allocation of physical memory',
          ),
        ],
      ),
      Subject(
        id: 'dsa',
        name: 'Data Structures & Algorithms',
        icon: '📊',
        flashcards: [
          Flashcard(
            id: 'dsa1',
            question: 'What is a Binary Search Tree?',
            answer: 'A binary tree where the left child contains only nodes with keys less than the parent node, and the right child only nodes with keys greater than the parent',
          ),
          Flashcard(
            id: 'dsa2',
            question: 'Explain Quick Sort',
            answer: 'A divide-and-conquer sorting algorithm that picks an element as pivot and partitions the array around the picked pivot',
          ),
        ],
      ),
      Subject(
        id: 'dbms',
        name: 'Database Management Systems',
        icon: '📚',
        flashcards: [
          Flashcard(
            id: 'dbms1',
            question: 'What is ACID in DBMS?',
            answer: 'Atomicity, Consistency, Isolation, Durability - four key properties of database transactions',
          ),
          Flashcard(
            id: 'dbms2',
            question: 'Explain Normal Forms',
            answer: 'Ways to organize data to reduce redundancy and dependency. Includes 1NF, 2NF, 3NF, BCNF',
          ),
        ],
      ),
    ];
  }
}