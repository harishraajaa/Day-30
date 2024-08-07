CREATE TABLE users (
userid INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(255),
useremail VARCHAR(255),
batchid INT
);

INSERT INTO users(username, useremail, batchid) VALUES
    ("Harish", "harish@gmail.com", 20),
    ("Pavithra", "pavibas@gmail.com", 10),
    ("Ramesh", "ramesh@gmail.com", 30),
    ("Santha", "santha@gmail.com", 40);
    
select * from users;

CREATE TABLE mentors (
mentorid INTEGER AUTO_INCREMENT PRIMARY KEY,
mentorname VARCHAR(255),
mentoremail VARCHAR(255)
);

INSERT INTO mentors(mentorname, mentoremail) VALUES
    ("Arun", "arun@gmail.com"),
    ("Kishore", "kishoremj@gmail.com"),
    ("Ajith Kumar", "ajith614@gmail.com");

select * from mentors;

CREATE TABLE codekata (
userid INTEGER,
solved_count INTEGER,
    FOREIGN KEY (userid) REFERENCES users(userid)
);

INSERT INTO codekata(userid, solved_count) VALUES
    (1, 15),
    (2, 40),
    (3, 79),
    (4, 72);
    
select * from codekata;

CREATE TABLE topics (
topicid INTEGER AUTO_INCREMENT PRIMARY KEY,
topic_name varchar(255)
);

INSERT INTO topics(topic_name) VALUES
    ('MangoDB'),
    ('ExpressJs'),
    ('ReactJs'),
    ('NodeJs');
    
select * from topics;

CREATE TABLE attendance (
attendanceid INTEGER AUTO_INCREMENT PRIMARY KEY,
userid INTEGER,
topicsid INTEGER,
status BOOLEAN,
    FOREIGN KEY (userid) REFERENCES users(userid),
    FOREIGN KEY (topicsid) REFERENCES topics(topicid)
);

INSERT INTO attendance(userid, topicsid, status) VALUES
    (2, 3, true),
    (4, 1, true),
    (1, 2, false),
    (3, 4, true);
    
select * from attendance;

CREATE TABLE Requirements (
driveid INTEGER AUTO_INCREMENT PRIMARY KEY,
userid INTEGER,
company VARCHAR(100),
FOREIGN KEY (userid) REFERENCES users(userid)
);

INSERT INTO Requirements(userid, company) VALUES
    (1, 'Amazon'),  
    (2, 'Oracle'),
    (3, 'Infosys'),
    (4, 'Adobe');

CREATE TABLE queries (
queryid INTEGER AUTO_INCREMENT PRIMARY KEY,
userid INTEGER,
querymessage VARCHAR(255),
mentorid INTEGER,
    FOREIGN KEY (userid) REFERENCES users(userid),
    FOREIGN KEY (mentorid) REFERENCES mentors(mentorid)
);

INSERT INTO queries(userid, querymessage, mentorid) VALUES
    (1, "query about HTML,CSS", 1),
    (3, "query about Node Installation",3),
    (2, "query about MongoDB", 2),
    (4, "query about MySQL", 2);






