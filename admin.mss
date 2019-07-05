@admin-boundaries: #ac46ac;

@admin-simplify: 4;
@admin-simplify-algorithm: visvalingam-whyatt;

#admin {
  [admin_level = '2'] {
    [zoom >= 4] {
      background/line-join: bevel;
      background/line-color: white;
      background/line-width: 1.2;
      background/line-simplify: @admin-simplify;
      background/line-simplify-algorithm: @admin-simplify-algorithm;
      line-join: bevel;
      line-color: @admin-boundaries;
      line-width: 1.2;
      line-simplify: @admin-simplify;
      line-simplify-algorithm: @admin-simplify-algorithm;
    }
    [zoom >= 5] {
      background/line-width: 1.5;
      line-width: 1.5;
    }
    [zoom >= 6] {
      background/line-width: 1.8;
      line-width: 1.8;
    }
    [zoom >= 7] {
      background/line-width: 2;
      line-width: 2;
    }
    [zoom >= 8] {
      background/line-width: 3;
      line-width: 3;
    }
    [zoom >= 9] {
      background/line-width: 3.2;
      line-width: 3.2;
    }
    [zoom >= 10] {
      background/line-width: 6;
      line-width: 6;
    }
  }

  /*
  The following code prevents admin boundaries from being rendered on top of
  each other. Comp-op works on the entire attachment, not on the individual
  border. Therefore, this code generates an attachment containing a set of
  @admin-boundaries/white dashed lines (of which only the top one is visible),
  and with `comp-op: darken` the white part is ignored, while the
  @admin-boundaries colored part is rendered (as long as the background is not
  darker than @admin-boundaries).
  The SQL has `ORDER BY admin_level`, so the boundary with the lowest
  admin_level is rendered on top, and therefore the only visible boundary.
  */
  opacity: 0.4;
}

#admin-text[zoom >= 11][way_pixels >= 48000] {
  [admin_level = '1'][way_pixels >= 360000],
  [admin_level = '2'][way_pixels >= 360000] {
    text-name: "[name]";
    text-face-name: @book-fonts;
    text-fill: @admin-boundaries;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-largest-bbox-only: false;
    text-placement: line;
    text-spacing: 750;
    text-repeat-distance: 250;
    text-margin: 10;
    text-clip: true;
    text-vertical-alignment: middle;
    text-dy: -10;
  }
}
