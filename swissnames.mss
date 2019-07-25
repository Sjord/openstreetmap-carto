#swissnames3dply {
  [zoom >= 14][OBJEKTKLAS = "TLM_GELAENDENAME"] {
    text-name: "[NAME]";
    text-fill: #363;
    text-size: @standard-font-size;
    text-spacing: 900;
    text-face-name: @standard-font;
    text-placement: interior;
  }
}

#swissnames3dpkt {
  [zoom >= 14] {
    text-name: "[NAME]";
    text-fill: #633;
    text-size: @standard-font-size;
    text-face-name: @standard-font;
    text-dy: 10;
    marker-fill: red;
    marker-width: 4;
  }
}
