# Gpx

Gpx is a generated swift package. It provides a struct that conforms to the Codable protocol. The implemtation is build on top of the [XMLCoder](https://github.com/MaxDesiatov/XMLCoder.git) package provided by Max Desiatov.

## Installation

Only Swift Package Manager is described here.

### Including Gpx in a swift package

Once you have your Swift package set up, add `Gpx` as a dependency by adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/fjagerman/Gpx.git", from: "0.1.0")
]
```

If you're using Gpx in an app built with Xcode, you can also add it as a direct
dependency [using Xcode's
GUI](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app).



  GPX schema version 1.1 - For more information on GPX and this schema, visit http://www.topografix.com/gpx.asp

  GPX uses the following conventions: all coordinates are relative to the WGS84 datum.  All measurements are in metric units.
 
<html>
  <head>
    <style>th {
  text-align: left;
}</style>
  </head>
  <body>
    <h2>Generated XML Schema (.xsd) documentation</h2>
    <h3>Element</h3>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>gpx</td>
        <td>gpxType</td>
        <td>
		GPX is the root element in the XML file.
	  </td>
      </tr>
    </table>
    <h3>SimpleTypes</h3>
    <table>
      <tr>
        <th>Name</th>
        <th>Base</th>
        <th>Constraints</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>latitudeType</td>
        <td>xsd:decimal</td>
        <td>-90.0 &lt;= x &lt;= 90.0</td>
        <td>
		The latitude of the point.  Decimal degrees, WGS84 datum.
	  </td>
      </tr>
      <tr>
        <td>longitudeType</td>
        <td>xsd:decimal</td>
        <td>-180.0 &lt;= x</td>
        <td>
		The longitude of the point.  Decimal degrees, WGS84 datum.
	  </td>
      </tr>
      <tr>
        <td>degreesType</td>
        <td>xsd:decimal</td>
        <td>0.0 &lt;= x</td>
        <td>
		Used for bearing, heading, course.  Units are decimal degrees, true (not magnetic).
	  </td>
      </tr>
      <tr>
        <td>fixType</td>
        <td>xsd:string</td>
        <td>Elements: none, 2d, 3d, dgps, pps</td>
        <td>
		Type of GPS fix.  none means GPS had no fix.  To signify "the fix info is unknown, leave out fixType entirely. pps = military signal used
	  </td>
      </tr>
      <tr>
        <td>dgpsStationType</td>
        <td>xsd:integer</td>
        <td>0 &lt;= x &lt;= 1023</td>
        <td>
	 Represents a differential GPS station.
    </td>
      </tr>
    </table>
    <h3>Overview of Complex Types</h3>
    <table>
      <tr>
        <th>Name</th>
        <th>annotation/documentation</th>
      </tr>
      <tr>
        <td>
          <a href="#gpxType">gpxType</a>
        </td>
        <td>
		GPX documents contain a metadata header, followed by waypoints, routes, and tracks.  You can add your own elements
		to the extensions section of the GPX document.
	  </td>
      </tr>
      <tr>
        <td>
          <a href="#metadataType">metadataType</a>
        </td>
        <td>
		Information about the GPX file, author, and copyright restrictions goes in the metadata section.  Providing rich,
		meaningful information about your GPX files allows others to search for and use your GPS data.
	  </td>
      </tr>
      <tr>
        <td>
          <a href="#wptType">wptType</a>
        </td>
        <td>
		wpt represents a waypoint, point of interest, or named feature on a map.
	  </td>
      </tr>
      <tr>
        <td>
          <a href="#rteType">rteType</a>
        </td>
        <td>
		rte represents route - an ordered list of waypoints representing a series of turn points leading to a destination.
	  </td>
      </tr>
      <tr>
        <td>
          <a href="#trkType">trkType</a>
        </td>
        <td>
		trk represents a track - an ordered list of points describing a path.
	  </td>
      </tr>
      <tr>
        <td>
          <a href="#extensionsType">extensionsType</a>
        </td>
        <td>
	 You can add extend GPX by adding your own elements from another schema here.
    </td>
      </tr>
      <tr>
        <td>
          <a href="#trksegType">trksegType</a>
        </td>
        <td>
 	 A Track Segment holds a list of Track Points which are logically connected in order. To represent a single GPS track where GPS reception was lost, or the GPS receiver was turned off, start a new Track Segment for each continuous span of track data.
    </td>
      </tr>
      <tr>
        <td>
          <a href="#copyrightType">copyrightType</a>
        </td>
        <td>
	 Information about the copyright holder and any license governing use of this file.  By linking to an appropriate license,
	 you may place your data into the public domain or grant additional usage rights.
    </td>
      </tr>
      <tr>
        <td>
          <a href="#linkType">linkType</a>
        </td>
        <td>
	 A link to an external resource (Web page, digital photo, video clip, etc) with additional information.
    </td>
      </tr>
      <tr>
        <td>
          <a href="#emailType">emailType</a>
        </td>
        <td>
	 An email address.  Broken into two parts (id and domain) to help prevent email harvesting.
    </td>
      </tr>
      <tr>
        <td>
          <a href="#personType">personType</a>
        </td>
        <td>
	 A person or organization.
    </td>
      </tr>
      <tr>
        <td>
          <a href="#ptType">ptType</a>
        </td>
        <td>
	 A geographic point with optional elevation and time.  Available for use by other schemas.
    </td>
      </tr>
      <tr>
        <td>
          <a href="#ptsegType">ptsegType</a>
        </td>
        <td>
	 An ordered sequence of points.  (for polygons or polylines, e.g.)
    </td>
      </tr>
      <tr>
        <td>
          <a href="#boundsType">boundsType</a>
        </td>
        <td>
	 Two lat/lon pairs defining the extent of an element.
    </td>
      </tr>
    </table>
    <h3>Definition of Complex Types</h3>
    <p></p>
    <h4 id="gpxType">Complextype gpxType</h4>
    <p>
		GPX documents contain a metadata header, followed by waypoints, routes, and tracks.  You can add your own elements
		to the extensions section of the GPX document.
	  </p>
    <h5>Elements</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Min Occurs</th>
        <th>Max Occurs</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>metadata</td>
        <td>metadataType</td>
        <td>0</td>
        <td></td>
        <td>
		Metadata about the file.
	   </td>
      </tr>
      <tr>
        <td>wpt</td>
        <td>wptType</td>
        <td>0</td>
        <td>unbounded</td>
        <td>
		A list of waypoints.
	   </td>
      </tr>
      <tr>
        <td>rte</td>
        <td>rteType</td>
        <td>0</td>
        <td>unbounded</td>
        <td>
		A list of routes.
	   </td>
      </tr>
      <tr>
        <td>trk</td>
        <td>trkType</td>
        <td>0</td>
        <td>unbounded</td>
        <td>
		A list of tracks.
	   </td>
      </tr>
      <tr>
        <td>extensions</td>
        <td>extensionsType</td>
        <td>0</td>
        <td></td>
        <td>
		You can add extend GPX by adding your own elements from another schema here.
	   </td>
      </tr>
    </table>
    <h5>Attributes</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Use</th>
        <th>fixed</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>version</td>
        <td>xsd:string</td>
        <td>required</td>
        <td>1.1</td>
        <td>
		You must include the version number in your GPX document.
	  </td>
      </tr>
      <tr>
        <td>creator</td>
        <td>xsd:string</td>
        <td>required</td>
        <td></td>
        <td>
		You must include the name or URL of the software that created your GPX document.  This allows others to
		inform the creator of a GPX instance document that fails to validate.
	  </td>
      </tr>
    </table>
    <p></p>
    <h4 id="metadataType">Complextype metadataType</h4>
    <p>
		Information about the GPX file, author, and copyright restrictions goes in the metadata section.  Providing rich,
		meaningful information about your GPX files allows others to search for and use your GPS data.
	  </p>
    <h5>Elements</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Min Occurs</th>
        <th>Max Occurs</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>name</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
		The name of the GPX file.
	   </td>
      </tr>
      <tr>
        <td>desc</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
		A description of the contents of the GPX file.
	   </td>
      </tr>
      <tr>
        <td>author</td>
        <td>personType</td>
        <td>0</td>
        <td></td>
        <td>
		The person or organization who created the GPX file.
	   </td>
      </tr>
      <tr>
        <td>copyright</td>
        <td>copyrightType</td>
        <td>0</td>
        <td></td>
        <td>
		Copyright and license information governing use of the file.
	   </td>
      </tr>
      <tr>
        <td>link</td>
        <td>linkType</td>
        <td>0</td>
        <td>unbounded</td>
        <td>
		URLs associated with the location described in the file.
	   </td>
      </tr>
      <tr>
        <td>time</td>
        <td>xsd:dateTime</td>
        <td>0</td>
        <td></td>
        <td>
		The creation date of the file.
	   </td>
      </tr>
      <tr>
        <td>keywords</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
		Keywords associated with the file.  Search engines or databases can use this information to classify the data.
	   </td>
      </tr>
      <tr>
        <td>bounds</td>
        <td>boundsType</td>
        <td>0</td>
        <td></td>
        <td>
		Minimum and maximum coordinates which describe the extent of the coordinates in the file.
	   </td>
      </tr>
      <tr>
        <td>extensions</td>
        <td>extensionsType</td>
        <td>0</td>
        <td></td>
        <td>
		You can add extend GPX by adding your own elements from another schema here.
	   </td>
      </tr>
    </table>
    <h5>No attributes</h5>
    <p></p>
    <h4 id="wptType">Complextype wptType</h4>
    <p>
		wpt represents a waypoint, point of interest, or named feature on a map.
	  </p>
    <h5>Elements</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Min Occurs</th>
        <th>Max Occurs</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>ele</td>
        <td>xsd:decimal</td>
        <td>0</td>
        <td></td>
        <td>
			Elevation (in meters) of the point.
		  </td>
      </tr>
      <tr>
        <td>time</td>
        <td>xsd:dateTime</td>
        <td>0</td>
        <td></td>
        <td>
			Creation/modification timestamp for element. Date and time in are in Univeral Coordinated Time (UTC), not local time! Conforms to ISO 8601 specification for date/time representation. Fractional seconds are allowed for millisecond timing in tracklogs. 
		  </td>
      </tr>
      <tr>
        <td>magvar</td>
        <td>degreesType</td>
        <td>0</td>
        <td></td>
        <td>
			Magnetic variation (in degrees) at the point
		  </td>
      </tr>
      <tr>
        <td>geoidheight</td>
        <td>xsd:decimal</td>
        <td>0</td>
        <td></td>
        <td>
			Height (in meters) of geoid (mean sea level) above WGS84 earth ellipsoid.  As defined in NMEA GGA message.
		  </td>
      </tr>
      <tr>
        <td>name</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
			The GPS name of the waypoint. This field will be transferred to and from the GPS. GPX does not place restrictions on the length of this field or the characters contained in it. It is up to the receiving application to validate the field before sending it to the GPS.
		  </td>
      </tr>
      <tr>
        <td>cmt</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
			GPS waypoint comment. Sent to GPS as comment. 
		  </td>
      </tr>
      <tr>
        <td>desc</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
			A text description of the element. Holds additional information about the element intended for the user, not the GPS.
		  </td>
      </tr>
      <tr>
        <td>src</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
			Source of data. Included to give user some idea of reliability and accuracy of data.  "Garmin eTrex", "USGS quad Boston North", e.g.
		  </td>
      </tr>
      <tr>
        <td>link</td>
        <td>linkType</td>
        <td>0</td>
        <td>unbounded</td>
        <td>
			Link to additional information about the waypoint.
		  </td>
      </tr>
      <tr>
        <td>sym</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
			Text of GPS symbol name. For interchange with other programs, use the exact spelling of the symbol as displayed on the GPS.  If the GPS abbreviates words, spell them out.
		  </td>
      </tr>
      <tr>
        <td>type</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
			Type (classification) of the waypoint.
		  </td>
      </tr>
      <tr>
        <td>fix</td>
        <td>fixType</td>
        <td>0</td>
        <td></td>
        <td>
			Type of GPX fix.
		  </td>
      </tr>
      <tr>
        <td>sat</td>
        <td>xsd:nonNegativeInteger</td>
        <td>0</td>
        <td></td>
        <td>
			Number of satellites used to calculate the GPX fix.
		  </td>
      </tr>
      <tr>
        <td>hdop</td>
        <td>xsd:decimal</td>
        <td>0</td>
        <td></td>
        <td>
			Horizontal dilution of precision.
		  </td>
      </tr>
      <tr>
        <td>vdop</td>
        <td>xsd:decimal</td>
        <td>0</td>
        <td></td>
        <td>
			Vertical dilution of precision.
		  </td>
      </tr>
      <tr>
        <td>pdop</td>
        <td>xsd:decimal</td>
        <td>0</td>
        <td></td>
        <td>
			Position dilution of precision.
		  </td>
      </tr>
      <tr>
        <td>ageofdgpsdata</td>
        <td>xsd:decimal</td>
        <td>0</td>
        <td></td>
        <td>
			Number of seconds since last DGPS update.
		  </td>
      </tr>
      <tr>
        <td>dgpsid</td>
        <td>dgpsStationType</td>
        <td>0</td>
        <td></td>
        <td>
			ID of DGPS station used in differential correction.
		  </td>
      </tr>
      <tr>
        <td>extensions</td>
        <td>extensionsType</td>
        <td>0</td>
        <td></td>
        <td>
		You can add extend GPX by adding your own elements from another schema here.
	   </td>
      </tr>
    </table>
    <h5>Attributes</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Use</th>
        <th>fixed</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>lat</td>
        <td>latitudeType</td>
        <td>required</td>
        <td></td>
        <td>
		The latitude of the point.  This is always in decimal degrees, and always in WGS84 datum.
	  </td>
      </tr>
      <tr>
        <td>lon</td>
        <td>longitudeType</td>
        <td>required</td>
        <td></td>
        <td>
      The longitude of the point.  This is always in decimal degrees, and always in WGS84 datum.
    </td>
      </tr>
    </table>
    <p></p>
    <h4 id="rteType">Complextype rteType</h4>
    <p>
		rte represents route - an ordered list of waypoints representing a series of turn points leading to a destination.
	  </p>
    <h5>Elements</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Min Occurs</th>
        <th>Max Occurs</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>name</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
			GPS name of route.
		  </td>
      </tr>
      <tr>
        <td>cmt</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
			GPS comment for route.
		  </td>
      </tr>
      <tr>
        <td>desc</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
			Text description of route for user.  Not sent to GPS.
		  </td>
      </tr>
      <tr>
        <td>src</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
			Source of data. Included to give user some idea of reliability and accuracy of data.
		  </td>
      </tr>
      <tr>
        <td>link</td>
        <td>linkType</td>
        <td>0</td>
        <td>unbounded</td>
        <td>
			Links to external information about the route.
		  </td>
      </tr>
      <tr>
        <td>number</td>
        <td>xsd:nonNegativeInteger</td>
        <td>0</td>
        <td></td>
        <td>
			GPS route number.
		  </td>
      </tr>
      <tr>
        <td>type</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
			Type (classification) of route.
		  </td>
      </tr>
      <tr>
        <td>extensions</td>
        <td>extensionsType</td>
        <td>0</td>
        <td></td>
        <td>
		You can add extend GPX by adding your own elements from another schema here.
	   </td>
      </tr>
      <tr>
        <td>rtept</td>
        <td>wptType</td>
        <td>0</td>
        <td>unbounded</td>
        <td>
		A list of route points.
	   </td>
      </tr>
    </table>
    <h5>No attributes</h5>
    <p></p>
    <h4 id="trkType">Complextype trkType</h4>
    <p>
		trk represents a track - an ordered list of points describing a path.
	  </p>
    <h5>Elements</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Min Occurs</th>
        <th>Max Occurs</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>name</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
			GPS name of track.
		  </td>
      </tr>
      <tr>
        <td>cmt</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
			GPS comment for track.
		  </td>
      </tr>
      <tr>
        <td>desc</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
			User description of track.
		  </td>
      </tr>
      <tr>
        <td>src</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
			Source of data. Included to give user some idea of reliability and accuracy of data.
		  </td>
      </tr>
      <tr>
        <td>link</td>
        <td>linkType</td>
        <td>0</td>
        <td>unbounded</td>
        <td>
			Links to external information about track.
		  </td>
      </tr>
      <tr>
        <td>number</td>
        <td>xsd:nonNegativeInteger</td>
        <td>0</td>
        <td></td>
        <td>
			GPS track number.
		  </td>
      </tr>
      <tr>
        <td>type</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
			Type (classification) of track.
		  </td>
      </tr>
      <tr>
        <td>extensions</td>
        <td>extensionsType</td>
        <td>0</td>
        <td></td>
        <td>
		You can add extend GPX by adding your own elements from another schema here.
	   </td>
      </tr>
      <tr>
        <td>trkseg</td>
        <td>trksegType</td>
        <td>0</td>
        <td>unbounded</td>
        <td>
		A Track Segment holds a list of Track Points which are logically connected in order. To represent a single GPS track where GPS reception was lost, or the GPS receiver was turned off, start a new Track Segment for each continuous span of track data.
	   </td>
      </tr>
    </table>
    <h5>No attributes</h5>
    <p></p>
    <h4 id="extensionsType">Complextype extensionsType</h4>
    <p>
	 You can add extend GPX by adding your own elements from another schema here.
    </p>
    <h5>Elements</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Min Occurs</th>
        <th>Max Occurs</th>
        <th>Annotation/documentation</th>
      </tr>
    </table>
    <h5>No attributes</h5>
    <p></p>
    <h4 id="trksegType">Complextype trksegType</h4>
    <p>
 	 A Track Segment holds a list of Track Points which are logically connected in order. To represent a single GPS track where GPS reception was lost, or the GPS receiver was turned off, start a new Track Segment for each continuous span of track data.
    </p>
    <h5>Elements</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Min Occurs</th>
        <th>Max Occurs</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>trkpt</td>
        <td>wptType</td>
        <td>0</td>
        <td>unbounded</td>
        <td>
		A Track Point holds the coordinates, elevation, timestamp, and metadata for a single point in a track.
	   </td>
      </tr>
      <tr>
        <td>extensions</td>
        <td>extensionsType</td>
        <td>0</td>
        <td></td>
        <td>
		You can add extend GPX by adding your own elements from another schema here.
	   </td>
      </tr>
    </table>
    <h5>No attributes</h5>
    <p></p>
    <h4 id="copyrightType">Complextype copyrightType</h4>
    <p>
	 Information about the copyright holder and any license governing use of this file.  By linking to an appropriate license,
	 you may place your data into the public domain or grant additional usage rights.
    </p>
    <h5>Elements</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Min Occurs</th>
        <th>Max Occurs</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>year</td>
        <td>xsd:gYear</td>
        <td>0</td>
        <td></td>
        <td>
		Year of copyright.
	  </td>
      </tr>
      <tr>
        <td>license</td>
        <td>xsd:anyURI</td>
        <td>0</td>
        <td></td>
        <td>
		Link to external file containing license text.
	  </td>
      </tr>
    </table>
    <h5>Attributes</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Use</th>
        <th>fixed</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>author</td>
        <td>xsd:string</td>
        <td>required</td>
        <td></td>
        <td>
		Copyright holder (TopoSoft, Inc.)
	  </td>
      </tr>
    </table>
    <p></p>
    <h4 id="linkType">Complextype linkType</h4>
    <p>
	 A link to an external resource (Web page, digital photo, video clip, etc) with additional information.
    </p>
    <h5>Elements</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Min Occurs</th>
        <th>Max Occurs</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>text</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
		Text of hyperlink.
	  </td>
      </tr>
      <tr>
        <td>type</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
		Mime type of content (image/jpeg)
	  </td>
      </tr>
    </table>
    <h5>Attributes</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Use</th>
        <th>fixed</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>href</td>
        <td>xsd:anyURI</td>
        <td>required</td>
        <td></td>
        <td>
		URL of hyperlink.
	  </td>
      </tr>
    </table>
    <p></p>
    <h4 id="emailType">Complextype emailType</h4>
    <p>
	 An email address.  Broken into two parts (id and domain) to help prevent email harvesting.
    </p>
    <h5>No elements</h5>
    <h5>Attributes</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Use</th>
        <th>fixed</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>id</td>
        <td>xsd:string</td>
        <td>required</td>
        <td></td>
        <td>
		id half of email address (billgates2004)
	  </td>
      </tr>
      <tr>
        <td>domain</td>
        <td>xsd:string</td>
        <td>required</td>
        <td></td>
        <td>
		domain half of email address (hotmail.com)
	  </td>
      </tr>
    </table>
    <p></p>
    <h4 id="personType">Complextype personType</h4>
    <p>
	 A person or organization.
    </p>
    <h5>Elements</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Min Occurs</th>
        <th>Max Occurs</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>name</td>
        <td>xsd:string</td>
        <td>0</td>
        <td></td>
        <td>
		Name of person or organization.
	  </td>
      </tr>
      <tr>
        <td>email</td>
        <td>emailType</td>
        <td>0</td>
        <td></td>
        <td>
		Email address.
	  </td>
      </tr>
      <tr>
        <td>link</td>
        <td>linkType</td>
        <td>0</td>
        <td></td>
        <td>
		Link to Web site or other external information about person.
	  </td>
      </tr>
    </table>
    <h5>No attributes</h5>
    <p></p>
    <h4 id="ptType">Complextype ptType</h4>
    <p>
	 A geographic point with optional elevation and time.  Available for use by other schemas.
    </p>
    <h5>Elements</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Min Occurs</th>
        <th>Max Occurs</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>ele</td>
        <td>xsd:decimal</td>
        <td>0</td>
        <td></td>
        <td>
		The elevation (in meters) of the point.
	  </td>
      </tr>
      <tr>
        <td>time</td>
        <td>xsd:dateTime</td>
        <td>0</td>
        <td></td>
        <td>
		The time that the point was recorded.
	  </td>
      </tr>
    </table>
    <h5>Attributes</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Use</th>
        <th>fixed</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>lat</td>
        <td>latitudeType</td>
        <td>required</td>
        <td></td>
        <td>
		The latitude of the point.  Decimal degrees, WGS84 datum.
	  </td>
      </tr>
      <tr>
        <td>lon</td>
        <td>longitudeType</td>
        <td>required</td>
        <td></td>
        <td>
		The latitude of the point.  Decimal degrees, WGS84 datum.
	  </td>
      </tr>
    </table>
    <p></p>
    <h4 id="ptsegType">Complextype ptsegType</h4>
    <p>
	 An ordered sequence of points.  (for polygons or polylines, e.g.)
    </p>
    <h5>Elements</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Min Occurs</th>
        <th>Max Occurs</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>pt</td>
        <td>ptType</td>
        <td>0</td>
        <td>unbounded</td>
        <td>
		 Ordered list of geographic points.
		</td>
      </tr>
    </table>
    <h5>No attributes</h5>
    <p></p>
    <h4 id="boundsType">Complextype boundsType</h4>
    <p>
	 Two lat/lon pairs defining the extent of an element.
    </p>
    <h5>No elements</h5>
    <h5>Attributes</h5>
    <table>
      <tr>
        <th>Name</th>
        <th>Type</th>
        <th>Use</th>
        <th>fixed</th>
        <th>Annotation/documentation</th>
      </tr>
      <tr>
        <td>minlat</td>
        <td>latitudeType</td>
        <td>required</td>
        <td></td>
        <td>
		The minimum latitude.
	  </td>
      </tr>
      <tr>
        <td>minlon</td>
        <td>longitudeType</td>
        <td>required</td>
        <td></td>
        <td>
		The minimum longitude.
	  </td>
      </tr>
      <tr>
        <td>maxlat</td>
        <td>latitudeType</td>
        <td>required</td>
        <td></td>
        <td>
		The maximum latitude.
	  </td>
      </tr>
      <tr>
        <td>maxlon</td>
        <td>longitudeType</td>
        <td>required</td>
        <td></td>
        <td>
		The maximum longitude.
	  </td>
      </tr>
    </table>
  </body>
</html>
