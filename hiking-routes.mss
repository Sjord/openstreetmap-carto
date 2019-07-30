
#hiking-routes-text {
  [zoom >= 14][symbol_background = 'green'] {
    shield-placement: line;
    shield-file: url('symbols/green_square.svg');
    shield-name: "[ref]";
    shield-fill: white;
    shield-face-name: @oblique-fonts;

    shield-size: @shield-size;
    shield-line-spacing: @shield-line-spacing;
    shield-spacing: 500;
    shield-margin: @shield-margin;
    shield-clip: @shield-clip;
  }

  [zoom >= 14][osmc_symbol = 'yellow::yellow_diamond'] {
    shield-placement: line;
    shield-file: url('symbols/yellow_diamond.svg');
    shield-name: "[ref]";
    shield-fill: white;
    shield-face-name: @oblique-fonts;

    shield-size: @shield-size;
    shield-line-spacing: @shield-line-spacing;
    shield-spacing: 500;
    shield-margin: @shield-margin;
    shield-clip: @shield-clip;
    shield-opacity: 0.7;
  }

  [zoom >= 14][osmc_symbol = 'red:white:red_bar'] {
    shield-placement: line;
    shield-file: url('symbols/white_red_stripe.svg');
    shield-name: "[ref]";
    shield-fill: white;
    shield-face-name: @oblique-fonts;

    shield-size: @shield-size;
    shield-line-spacing: @shield-line-spacing;
    shield-spacing: 500;
    shield-margin: @shield-margin;
    shield-clip: @shield-clip;
    shield-opacity: 0.7;
  }

  [zoom >= 14][osmc_symbol = 'blue:white:blue_bar'] {
    shield-placement: line;
    shield-file: url('symbols/white_blue_stripe.svg');
    shield-name: "[ref]";
    shield-fill: white;
    shield-face-name: @oblique-fonts;

    shield-size: @shield-size;
    shield-line-spacing: @shield-line-spacing;
    shield-spacing: 500;
    shield-margin: @shield-margin;
    shield-clip: @shield-clip;
    shield-opacity: 0.7;
  }
}
