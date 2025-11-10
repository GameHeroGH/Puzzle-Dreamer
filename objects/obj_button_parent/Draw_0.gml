/*****************************************************************************
 *                                                                           *
 *                                                                           *
 *                                                                           *
 *          Creating the stuff required for the text to show up              *
 *                          within the buttons.                              *
 *                                                                           *
 *                        Programmer: James Hall (GAMEHERO)                  *
 *                        Date: November 8, 2025 (11/8/2025)                 *
 *                                                                           *
 *                                                                           *
 *                                                                           *
 *****************************************************************************/

draw_self();

draw_set_font(cherrybombone_jp_font);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, button_text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);