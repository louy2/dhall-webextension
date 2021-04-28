let WebExtentionManifest = ./WebExtentionManifest.dhall

in WebExtentionManifest.mkWebExtentionManifest
{ content_scripts =
  [ { js = [ "borderify.js" ]
    , matches = [ "*://*.mozilla.org/*" ] } 
  ]
, description = Some "Adds a red border to all webpages matching mozilla.org."
, icons = Some 
    [ { mapKey = "48", mapValue = "icons/border-48.png" }
    ]
, name = "TrendMicroExt"
, version = "0.1"
}
