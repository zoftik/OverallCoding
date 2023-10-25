class Person {
    constructor(name) {
        this.name = name;
    }
}

class Student extends Person {
    constructor(name, rollNo, class_name) {
        super(name);
        this.rollNo = rollNo;
        this.class_name = class_name;
    }

    getDetails() {
        return [this.name, this.rollNo, this.class_name];
    }
}

class Teacher extends Person {
    constructor(name, teacherId, subject) {
        super(name);
        this.teacherId = teacherId;
        this.subject = subject;
    }

    getDetails() {
        return [this.name, this.teacherId, this.subject];
    }
}

const readline = require('readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Enter student and teacher information (name rollNo class_name teacherId subject): ', (input) => {
    const [name1, rollNo, class_name, name2, teacherId, subject] = input.split(' ');

    const student = new Student(name1, rollNo, class_name);
    const teacher = new Teacher(name2, teacherId, subject);

    const studentDetails = student.getDetails().join(' ');
    const teacherDetails = teacher.getDetails().join(' ');

    console.log(studentDetails);
    console.log(teacherDetails);

    rl.close();
});
