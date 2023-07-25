use cap3104;
#Priority rating (e.g., 1 = high, 2 = high-medium, 3 = medium, 4 = medium-low, 5 = low)
#Status (e.g., 1 = completed, 2 = 50% complete, 3 = not implemented)

CREATE TABLE requirement (
	requirement_id INT AUTO_INCREMENT PRIMARY KEY,
    requirement_number VARCHAR(20),
    requirement_text TEXT NOT NULL
);

CREATE TABLE priority (
    priority_id INT AUTO_INCREMENT PRIMARY KEY,
    priority_value INT NOT NULL,
    priority_text VARCHAR(15) NOT NULL
);

CREATE TABLE status (
	status_id INT AUTO_INCREMENT PRIMARY KEY,
    status_value INT NOT NULL,
    status_text VARCHAR(20) NOT NULL
);

CREATE TABLE tracking (
    tracking_id INT AUTO_INCREMENT PRIMARY KEY,
    requirement_id INT,
    priority_id INT,
    status_id INT,
    FOREIGN KEY (requirement_id) REFERENCES requirement(requirement_id),
    FOREIGN KEY (priority_id) REFERENCES priority(priority_id),
    FOREIGN KEY (status_id) REFERENCES status(status_id)
);
 
CREATE VIEW trackingView AS
SELECT r.requirement_number, r.requirement_text, p.priority_text, s.status_text
FROM tracking t
JOIN requirement r ON t.requirement_id = r.requirement_id
JOIN priority p ON t.priority_id = p.priority_id
JOIN status s ON t.status_id = s.status_id;
 
# 3.2.1.1 
INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.1.1', 'An icon shall be selected during detailed design to show a gate in a closed position.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (1, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.1.2', 'An icon shall be selected during detailed design to show a gate in an open position.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (2, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.1.3', 'An icon shall be selected during detailed design to show a gate in a partially open (15%) open
position.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (3, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.1.4', 'The gate icon shall be configurable to show the name of the gate with the icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (2, '50% Complete');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (4, 3, 2);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.1.5', 'The gate icon shall be configurable to show the state of the gate (e.g., open or close).');
INSERT INTO priority (priority_value, priority_text) VALUES (1, 'High');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (5, 1, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.1.6', 'The gate icon shall be configurable to show the status of the gate (operational, failed, or no data).
The color of the gate icon shall be changed to show the status of the gate.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (6, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.1.7', 'When the operator moves the mouse over a gate icon a text window shall be displayed showing a 
summary of the gate status. The details of the summary status display will be defined in the GUI design document.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (7, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.1.8', 'The operator shall be able to activate a detailed device status window for the selected gate by double
left clicking on the icon. This action shall cause a circle to be displayed over the gate icon for as long as the detailed device status window is displayed for that gate.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (8, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.1.9', 'The operator shall be able to activate a device control window for the selected gate by right clicking
on the icon. The right click on the icons shall display a pop-up menu of available device actions from which the user may select. This action shall cause a circle to be displayed 
over the gate icon for as long as the device control window is displayed for that gate.');
INSERT INTO priority (priority_value, priority_text) VALUES (1, 'High');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (9, 1, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.1.9.1', 'If operation of the device is locked out for safety reasons a command option will be “grayed out”
and not selectable.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (10, 5, 1);



# 3.2.1.2
INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.2.1', 'An icon shall be selected during detailed design to indicate a group of popups in an “Up” or entrance
closed position.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (11, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.2.2', 'An icon shall be selected during detailed design to indicate a group of popups in a “Down” or
entrance opened position.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (12, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.2.3', 'An icon shall be selected during detailed design to indicate a failure status when some popups in a
group are in a “Down” position and some popups in the same group are in an “Up’ position.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (13, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.2.4', 'The popup icon shall be configurable to display the name of the popup group.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (2, '50% Complete');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (14, 5, 2);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.2.5', 'The popup icon shall be configurable to display the state of the popup group (up or down).');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (15, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.2.6', 'The popup icon shall be configurable to display the status of the popup group. The color of the icon
shall be changed to show the status of the popup group.');
INSERT INTO priority (priority_value, priority_text) VALUES (1, 'High');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (16, 1, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.2.7', 'When the operator moves the mouse over a popup icon a text window shall be displayed showing a
summary of the popup group status. The details of the status display will be defined in the GUI design document.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (17, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.2.8', 'The operator shall be able to activate a detailed device status window for the selected popup group by
double left clicking on the icon. A circle shall be displayed over the icon as long as the detailed status window is displayed for the icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (18, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.2.9', 'The operator shall be able to activate a device control window for the selected popup by right clicking
on the icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. A circle shall be displayed over the icon as long as the 
device control window is displayed for the icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (19, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.2.9.1', 'If operation of the device is locked out for safety reasons a command option will be “grayed out”
and not selectable.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (20, 3, 1);



# 3.2.1.3
INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.3.1', 'An icon shall be selected during detailed design to indicate changeable message signs.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (21, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.3.2', 'An icon shall be selected during detailed design to indicate a changeable message sign that is
displaying a message.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (22, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.3.3', 'The CMS icon shall be configurable to display the name of the sign with the icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (2, '50% Complete');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (23, 5, 2);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.3.4', 'The CMS icon shall be configurable to display an abbreviated message text with the icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (24, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.3.5', 'The CMS icon shall be configurable to display the status of the sign associated with the icon. The
CMS icon color shall represent the operational status of the CMS sign: green for operational, yellow for operational with errors, gray for no communications and red for failed.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (25, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.3.6', 'If the operator moves the mouse over the CMS icon then a text window shall be displayed with a
summary of the operational state and status of the sign and the text of any message being displayed on the sign.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (26, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.3.7', 'The operator shall be able to activate a detailed device status window for the sign by double left
clicking on the selected icon. A circle shall be displayed over the icon as long as the detailed device status window is displayed for that icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (27, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.3.8', 'The operator shall be able to activate a device control window for the CMS sign by right clicking on
the selected icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. A circle shall be displayed over the icon as 
long as the device control window is displayed for that icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (1, 'High');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (28, 1, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.3.8.1', 'If operation of the device is locked out for safety reasons a command option will be “grayed out”
and not selectable.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (29, 3, 1);



# 3.2.1.4
INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.4.1', 'An icon shall be selected to indicate a CCTV camera');
INSERT INTO priority (priority_value, priority_text) VALUES (1, 'High');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (30, 1, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.4.2', 'The camera icon shall be configurable to show the name of the camera with the icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (31, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.4.3', 'The camera icon shall be configurable to show the state of the camera.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (32, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.4.4', 'The camera icon shall be configurable to show the status of the camera. The color of the camera icon
shall be changed to show the status of the camera.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (33, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.4.5', 'When a user moves the mouse over a camera icon a text window shall be displayed showing a
summary of the camera status.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (2, '50% Complete');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (34, 3, 2);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.4.6', 'The user shall be able to activate a detailed device status window for the selected camera by double
left clicking on the icon. This action shall cause a circle to be displayed over the camera icon for as long as the detailed device status window is displayed for that camera.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (35, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.4.7', 'The user shall be able to activate a device control window for the selected camera by right clicking on
the icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. This action shall cause a circle to be displayed over the camera 
icon for as long as the device control window is displayed for that camera.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (36, 5, 1);



# 3.2.1.5
INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.5.1', 'An icon shall be selected during detailed design to indicate a group of draw lights that are off.');
INSERT INTO priority (priority_value, priority_text) VALUES (1, 'High');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (37, 1, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.5.2', 'An icon shall be selected during detailed design to indicate a group of draw lights that are on.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (38, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.5.3', 'An icon shall be selected during detailed design to indicate a group of draw lights where some are on
and some are off.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (39, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.5.4', 'The draw light icon shall be configurable to display the name of the draw lights.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (2, '50% Complete');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (40, 5, 2);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.5.5', 'The draw light icon shall be configurable to display the state of the draw lights.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (41, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.5.6', 'The draw light icon shall be configurable to display the status of the draw lights. The color of the
draw light icon shall represent the status of the draw light: green for operational, yellow for operational with errors, gray for no communications and red for failed.');
INSERT INTO priority (priority_value, priority_text) VALUES (1, 'High');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (42, 1, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.5.7', 'When the operator moves the mouse over a draw light icon a text window shall be displayed showing
a summary of the status of the group of draw lights. The details of the status display will be defined in the GUI design document.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (43, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.5.8', 'The operator shall be able to activate a detailed device status window for the draw lights by double
left clicking on the selected icon. A circle shall be displayed over the icon as long as the detailed device status window is displayed for that icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (44, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.5.9', 'The operator shall be able to activate a device control window for the draw lights by right clicking on
the selected icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. A circle shall be displayed over the icon as long 
as the device control window is displayed for that icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (45, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.5.9.1', 'If operation of the device is locked out for safety reasons the command option will be “grayed out”
and not selectable.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (46, 3, 1);



# 3.2.1.6
INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.6.1', 'An icon shall be selected during detailed design to indicate a group of wrong way lights that are off.');
INSERT INTO priority (priority_value, priority_text) VALUES (1, 'High');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (47, 1, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.6.2', 'An icon shall be selected during detailed design to indicate a group of wrong way lights that are on.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (48, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.6.3', 'An icon shall be selected during detailed design to indicate a group of wrong way lights where some
are on and some are off.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (49, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.6.4', 'The wrong way light icon shall be configurable to display the name of the draw lights.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (2, '50% Complete');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (50, 5, 2);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.6.5', 'The wrong way light icon shall be configurable to display the state of the wrong way lights.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (51, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.6.6', 'The wrong way light icon shall be configurable to display the status of the group of wrong way
lights. The color of the wrong way light icon shall represent the status of the wrong way light: green for operational, yellow for operational with errors, gray for no communications and 
red for failed.');
INSERT INTO priority (priority_value, priority_text) VALUES (1, 'High');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (52, 1, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.6.7', ' When the operator moves the mouse over a wrong way light icon a text window shall be displayed
showing a summary of the status of the group of wrong way lights. The details of the status display will be defined in the GUI design document.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (53, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.6.8', 'The operator shall be able to activate a detailed device status window for the wrong way lights by
double left clicking on the selected icon. A circle shall be displayed over the icon as long as the detailed device status window is displayed for that icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (54, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.6.9', 'The operator shall be able to activate the control window for the wrong way light by right clicking on
the selected icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. 
A circle shall be displayed over the icon as long as the device control window is displayed for that icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (55, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.6.9.1', 'If operation of the device is locked out for safety a command option will be “grayed out” and not
selectable.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (56, 3, 1);



# 3.2.1.7
INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.7.1', 'An icon shall be selected during detailed design to indicate a loop detector.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (57, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.7.2', 'An icon shall be selected during detailed design to indicate a group of loop detectors.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (58, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.7.3', 'The loop detector and group detector icons shall use color to indicate either speed, volume, or
occupancy is within a specified range or if no data is available from the detector or from all loop detectors in a group.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (59, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.7.4', 'The color used to indicate a range shall be configurable.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (2, '50% Complete');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (60, 5, 2);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.7.5', 'The data being displayed by color shall be configurable.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (61, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.7.6', 'The range being displayed by a color shall be configurable.');
INSERT INTO priority (priority_value, priority_text) VALUES (1, 'High');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (62, 1, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.7.7', ' The operator shall be able to configure the color, the range and/or the data type without restarting the
application.');
INSERT INTO priority (priority_value, priority_text) VALUES (1, 'High');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (63, 1, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.7.8', 'The loop detector icon shall be configurable to display the name of the loop detector.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (64, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.7.9', 'The loop detector icon shall be configurable to display the N second volume, speed and occupancy
values as text associated with the icon. The value on N shall be configurable.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (65, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.7.10', 'The group detector icon shall be configurable to display the name of the detector group name as text
with the icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (66, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.7.11', 'The group detector icon shall be configurable to display the N second average of volume, speed and
occupancy for all detectors in the group as text with the icon. The value of N shall be configurable.');
INSERT INTO priority (priority_value, priority_text) VALUES (1, 'High');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (67, 1, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.7.12', 'The detector loop icon shall be configurable to display the status of the loop detector or group of loop
detectors.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (68, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.7.13', 'When the operator moves the mouse over a detector loop icon a text window shall be displayed
showing a summary of the status of the loop detector or the group of detector loops. The details of the status display will be defined in the GUI design document.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (69, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.7.14', 'The operator shall be able to activate a detailed device status window for the loop or group of loops
by double left clicking on the selected icon. A circle shall be displayed over the icon as long as the detailed device status window for that icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (70, 3, 1);



# 3.2.1.8
INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.8.1', 'Icons shall be selected during detailed design to represent the FCUs and the DCU/MCUs.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (71, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.8.2', 'The FCU icon and the DCU/MCU icon shall be configurable to show the name of the site with the icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (1, 'High');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (72, 1, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.8.3', 'The icons shall be configurable to show the status of the equipment at the site. The color of the icons
shall be changed to show the status of the equipment.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (73, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.8.4', 'When the operator moves the mouse over an FCU or DCU/MCU icon a text window shall be
displayed showing a summary of the site status. The details of the status display will be defined in the GUI design document.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (2, '50% Complete');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (74, 5, 2);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.8.5', 'The operator shall be able to activate a detailed device status window for the selected site by double
left clicking on the icon. This action shall cause a circle to be displayed over the icon for as long as the detailed device status window is displayed for that site.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (75, 5, 1);



# 3.2.1.9
INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.9.1', 'An icon shall represent the end point of the HOV lanes (North and South). The icon shall have
different shapes to represent that the end point is closed, open Southbound or open Northbound.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (76, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.9.2', 'The end point icon shall be configurable to show the name of the end point associated with the icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (77, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.9.3', 'The end point icon shall be configurable to show the state of the end point associated with the icon.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (78, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.9.4', 'The end point icon shall be configurable to show the status of the end point. The color of the icon
shall be changed to show the status of the end point.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (2, '50% Complete');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (79, 5, 2);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.9.5', 'When the operator moves the mouse over an end point icon a text window shall be displayed showing
a summary of the end point status. The details of the summary status display will be defined in the GUI design document.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (80, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.9.6', 'The operator shall be able to activate a detailed device status window for the selected end point by
double left clicking on the icon. This action shall cause a circle to be displayed over the icon for as
long as the detailed device status window is displayed for that end point.');
INSERT INTO priority (priority_value, priority_text) VALUES (1, 'High');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (81, 1, 1);



# 3.2.1.10
INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.10.1', 'An icon shall be selected during detailed design to represent active incidents.');
INSERT INTO priority (priority_value, priority_text) VALUES (1, 'High');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (82, 1, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.10.2', 'The incident icon shall be configurable to display the state of the incident.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (83, 3, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.10.3', 'When the operator moves the mouse over an incident icon a text window shall be displayed showing
a summary of the incident state. The details of the summary state display will be defined in the GUI design document.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (84, 5, 1);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.10.4', 'The operator shall be able to activate a detailed incident state window for the selected incident by
double left clicking on the icon. This action shall cause a circle to be displayed over the incident icon for as long as the detailed device status window is displayed for that incident.');
INSERT INTO priority (priority_value, priority_text) VALUES (5, 'Low');
INSERT INTO status (status_value, status_text) VALUES (2, '50% Complete');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (85, 5, 2);

INSERT INTO requirement (requirement_number, requirement_text) VALUES ('3.2.1.10.5', 'The operator shall be able to activate an edit window for the selected incident by right clicking on the
icon. This action shall cause a circle to be displayed over the incident icon for as long as the edit window is displayed for that incident.');
INSERT INTO priority (priority_value, priority_text) VALUES (3, 'Medium');
INSERT INTO status (status_value, status_text) VALUES (1, 'Completed');
INSERT INTO tracking (requirement_id, priority_id, status_id) VALUES (86, 3, 1);