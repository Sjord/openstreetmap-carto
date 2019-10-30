#!/bin/bash
osm2pgsql --create --database gis --hstore --multi-geometry --slim -S openstreetmap-carto.style --tag-transform-script openstreetmap-carto.lua $@
