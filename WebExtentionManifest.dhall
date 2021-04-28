let ContentScript : Type =
{ js : List Text, matches : List Text }

let Icons : Type =
List { mapKey : Text, mapValue : Text }

let WebExtentionManifest : Type =
{ content_scripts : List ContentScript
, description : Optional Text
, icons : Optional Icons
, manifest_version : Natural
, name : Text
, version : Text
}

let WebExtentionManifestArgs : Type =
{ content_scripts : List ContentScript
, description : Optional Text
, icons : Optional Icons
, name : Text
, version : Text
}

let mkWebExtentionManifest : WebExtentionManifestArgs -> WebExtentionManifest =
\(args : WebExtentionManifestArgs) -> args /\ { manifest_version = 2 }

in
{ mkWebExtentionManifest
}