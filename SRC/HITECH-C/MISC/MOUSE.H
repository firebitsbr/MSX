/* MOUSE.H
 * Direct I/O mouse functions for Hi-Tech C MSX
 * Public Domain by Pierre Gielen, 6/94
 */

/* int mice() returns 0 if no mice, 1 = mouse in port 1, 2 = mouse
   in port 2, 3 = mice in port 1 and 2. */

extern int mice();

/* chkmous(p) returns 1 if a mouse is connected to port p, else 0 */

extern int chkmous(int);

/* getmous(p) samples the signed offsets of mouse in port p. After
   the call to getmouse, Xoffs contains the signed char X-offset, and
   Yoffs the signed char Y-offset of the mouse in port p. */

extern void getmous(int);

#define Xoffs (*(char *)0xfafe)
#define Yoffs (*(char *)0xfb00)


/* int stick(p) gets the joystick direction of the specified stick.
   The returned value has the same meaning as in BASIC (0..8). */

extern int stick(int);

/* int trigger(p) gets the trigger status of the specified stick.
   if trigger(p)==0 then no buttons are pushed. If it's 1, button
   1 is pushed, 2 for button 2 and 3 for both buttons, if possible.
   On the keyboard, button 1 is the space bar and button 2 the
   shift key. On the mouse, 1 is the left button, 2 the right one. */

extern int trigger(int);


/**/
                                                                                            