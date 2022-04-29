#include <cairo.h>
#include <cairo-pdf.h>

int main (void)
{
  cairo_surface_t * pdf_task = cairo_pdf_surface_create("z.pdf", 100, 100);
  cairo_t * ctx = cairo_create(pdf_task);
  cairo_move_to(ctx, 0, 0);
  cairo_line_to(ctx, 100, 100);
  cairo_stroke(ctx);
  cairo_show_page(ctx);
  cairo_destroy(ctx);
  cairo_surface_destroy(pdf_task);

  return 0;
}
