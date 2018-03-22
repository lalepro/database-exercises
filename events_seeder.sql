USE events_codeup_db;

INSERT into attendees (name)
    VALUES
      ('Alan'),
      ('Grace'),
      ('Ada'),
      ('Bjarne');

INSERT INTO presentations (name, location, presentation_time)
  VALUE
  ('Test-Driven Development 101', 'Conference',  '2001-01-01 09:00:00' ),
  ('Intro to Management: Proactively Synergizing Paradigm Shifts', 'Conference Room B', '2001-01-01 09:00:00'),
  ('Java Design Patterns: Factory factories', 'Conference Room A', '2001-01-01 10:30:00'),
  ('Development Methodologies: What the SCRUM?', 'Conference Room A', '2001-01-01 10:30:00');

INSERT INTO attendee_presentation (attendee_id, presentation_id)
VALUES
  (1,1), (1, 3), (2, 2), (2, 4), (3, 2), (3, 3), (4, 4);

SELECT * FROM attendee_presentation;

SELECT * FROM presentations;
SELECT * FROM attendees;

SELECT * FROM presentations WHERE id IN (
  SELECT id FROM attendee_presentation WHERE id in (
    SELECT id FROM attendees WHERE attendees.name = 'alan'
  )
);


