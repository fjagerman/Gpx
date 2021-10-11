//
//  \(element.name.upperCamel).swift
//  Shared
// GPX schema version 1.1 - For more information on GPX and this schema, visit http://www.topografix.com/gpx.asp
// GPX uses the following conventions: all coordinates are relative to the WGS84 datum.  All measurements are in metric units.//
//  Generated on 10/11/2021 by xsd_parser.
//

import Foundation
import XMLCoder

/// GPX schema version 1.1 - For more information on GPX and this schema, visit http://www.topografix.com/gpx.asp
/// GPX uses the following conventions: all coordinates are relative to the WGS84 datum.  All measurements are in metric units.
/// GPX is the root element in the XML file.

public struct Gpx: Codable {    /// GPX documents contain a metadata header, followed by waypoints, routes, and tracks.  You can add your own elements
    /// to the extensions section of the GPX document.


    /// Metadata about the file.
    public let metadata: MetadataType? // (Element)

    /// A list of waypoints.
    public let wpt: [WptType] // (Element)

    /// A list of routes.
    public let rte: [RteType] // (Element)

    /// A list of tracks.
    public let trk: [TrkType] // (Element)

    /// You can add extend GPX by adding your own elements from another schema here.
    public let extensions: ExtensionsType? // (Element)

    /// Conformance to XMLCoder   ``XMLCoder/DynamicNodeEncodable`` protocol
    public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
        switch key {
        case CodingKeys.version, CodingKeys.creator:
            return .attribute
        default:
            return .element
        }
    }

    /// Conformance to XMLCoder   ``XMLCoder/DynamicNodeDecodable`` protocol
    public static func nodeDecoding(for key: CodingKey) -> XMLDecoder.NodeDecoding {
        switch key {
        case CodingKeys.version, CodingKeys.creator:
            return .attribute
        default:
            return .element
        }
    }

    /// You must include the version number in your GPX document.
    public let version: String // (Attibute)

    /// You must include the name or URL of the software that created your GPX document.  This allows others to
    /// inform the creator of a GPX instance document that fails to validate.
    public let creator: String // (Attibute)    /// Information about the GPX file, author, and copyright restrictions goes in the metadata section.  Providing rich,
    /// meaningful information about your GPX files allows others to search for and use your GPS data.
    public struct MetadataType: Codable {  // (ComplexType)


        /// The name of the GPX file.
        public let name: String? // (Element)

        /// A description of the contents of the GPX file.
        public let desc: String? // (Element)

        /// The person or organization who created the GPX file.
        public let author: PersonType? // (Element)

        /// Copyright and license information governing use of the file.
        public let copyright: CopyrightType? // (Element)

        /// URLs associated with the location described in the file.
        public let link: [LinkType] // (Element)

        /// The creation date of the file.
        public let time: Date? // (Element)

        /// Keywords associated with the file.  Search engines or databases can use this information to classify the data.
        public let keywords: String? // (Element)

        /// Minimum and maximum coordinates which describe the extent of the coordinates in the file.
        public let bounds: BoundsType? // (Element)

        /// You can add extend GPX by adding your own elements from another schema here.
        public let extensions: ExtensionsType? // (Element)
    }
    /// wpt represents a waypoint, point of interest, or named feature on a map.
    public struct WptType: Codable {  // (ComplexType)


        /// Elevation (in meters) of the point.
        public let ele: Double? // (Element)

        /// Creation/modification timestamp for element. Date and time in are in Univeral Coordinated Time (UTC), not local time! Conforms to ISO 8601 specification for date/time representation. Fractional seconds are allowed for millisecond timing in tracklogs.
        public let time: Date? // (Element)

        /// Magnetic variation (in degrees) at the point
        public let magvar: DegreesType? // (Element)

        /// Height (in meters) of geoid (mean sea level) above WGS84 earth ellipsoid.  As defined in NMEA GGA message.
        public let geoidheight: Double? // (Element)

        /// The GPS name of the waypoint. This field will be transferred to and from the GPS. GPX does not place restrictions on the length of this field or the characters contained in it. It is up to the receiving application to validate the field before sending it to the GPS.
        public let name: String? // (Element)

        /// GPS waypoint comment. Sent to GPS as comment.
        public let cmt: String? // (Element)

        /// A text description of the element. Holds additional information about the element intended for the user, not the GPS.
        public let desc: String? // (Element)

        /// Source of data. Included to give user some idea of reliability and accuracy of data.  "Garmin eTrex", "USGS quad Boston North", e.g.
        public let src: String? // (Element)

        /// Link to additional information about the waypoint.
        public let link: [LinkType] // (Element)

        /// Text of GPS symbol name. For interchange with other programs, use the exact spelling of the symbol as displayed on the GPS.  If the GPS abbreviates words, spell them out.
        public let sym: String? // (Element)

        /// Type (classification) of the waypoint.
        public let type: String? // (Element)

        /// Type of GPX fix.
        public let fix: FixType? // (Element)

        /// Number of satellites used to calculate the GPX fix.
        public let sat: UInt? // (Element)

        /// Horizontal dilution of precision.
        public let hdop: Double? // (Element)

        /// Vertical dilution of precision.
        public let vdop: Double? // (Element)

        /// Position dilution of precision.
        public let pdop: Double? // (Element)

        /// Number of seconds since last DGPS update.
        public let ageofdgpsdata: Double? // (Element)

        /// ID of DGPS station used in differential correction.
        public let dgpsid: DgpsStationType? // (Element)

        /// You can add extend GPX by adding your own elements from another schema here.
        public let extensions: ExtensionsType? // (Element)

        /// Conformance to XMLCoder   ``XMLCoder/DynamicNodeEncodable`` protocol
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case CodingKeys.lat, CodingKeys.lon:
                return .attribute
            default:
                return .element
            }
        }

        /// Conformance to XMLCoder   ``XMLCoder/DynamicNodeDecodable`` protocol
        public static func nodeDecoding(for key: CodingKey) -> XMLDecoder.NodeDecoding {
            switch key {
            case CodingKeys.lat, CodingKeys.lon:
                return .attribute
            default:
                return .element
            }
        }

        /// The latitude of the point.  This is always in decimal degrees, and always in WGS84 datum.
        public let lat: LatitudeType // (Attibute)

        /// The longitude of the point.  This is always in decimal degrees, and always in WGS84 datum.
        public let lon: LongitudeType // (Attibute)
    }
    /// rte represents route - an ordered list of waypoints representing a series of turn points leading to a destination.
    public struct RteType: Codable {  // (ComplexType)


        /// GPS name of route.
        public let name: String? // (Element)

        /// GPS comment for route.
        public let cmt: String? // (Element)

        /// Text description of route for user.  Not sent to GPS.
        public let desc: String? // (Element)

        /// Source of data. Included to give user some idea of reliability and accuracy of data.
        public let src: String? // (Element)

        /// Links to external information about the route.
        public let link: [LinkType] // (Element)

        /// GPS route number.
        public let number: UInt? // (Element)

        /// Type (classification) of route.
        public let type: String? // (Element)

        /// You can add extend GPX by adding your own elements from another schema here.
        public let extensions: ExtensionsType? // (Element)

        /// A list of route points.
        public let rtept: [WptType] // (Element)
    }
    /// trk represents a track - an ordered list of points describing a path.
    public struct TrkType: Codable {  // (ComplexType)


        /// GPS name of track.
        public let name: String? // (Element)

        /// GPS comment for track.
        public let cmt: String? // (Element)

        /// User description of track.
        public let desc: String? // (Element)

        /// Source of data. Included to give user some idea of reliability and accuracy of data.
        public let src: String? // (Element)

        /// Links to external information about track.
        public let link: [LinkType] // (Element)

        /// GPS track number.
        public let number: UInt? // (Element)

        /// Type (classification) of track.
        public let type: String? // (Element)

        /// You can add extend GPX by adding your own elements from another schema here.
        public let extensions: ExtensionsType? // (Element)

        /// A Track Segment holds a list of Track Points which are logically connected in order. To represent a single GPS track where GPS reception was lost, or the GPS receiver was turned off, start a new Track Segment for each continuous span of track data.
        public let trkseg: [TrksegType] // (Element)
    }
    /// You can add extend GPX by adding your own elements from another schema here.
    public struct ExtensionsType: Codable {  // (ComplexType)

    }
    /// A Track Segment holds a list of Track Points which are logically connected in order. To represent a single GPS track where GPS reception was lost, or the GPS receiver was turned off, start a new Track Segment for each continuous span of track data.
    public struct TrksegType: Codable {  // (ComplexType)


        /// A Track Point holds the coordinates, elevation, timestamp, and metadata for a single point in a track.
        public let trkpt: [WptType] // (Element)

        /// You can add extend GPX by adding your own elements from another schema here.
        public let extensions: ExtensionsType? // (Element)
    }
    /// Information about the copyright holder and any license governing use of this file.  By linking to an appropriate license,
    /// you may place your data into the public domain or grant additional usage rights.
    public struct CopyrightType: Codable {  // (ComplexType)


        /// Year of copyright.
        public let year: Date? // (Element)

        /// Link to external file containing license text.
        public let license: URL? // (Element)

        /// Conformance to XMLCoder   ``XMLCoder/DynamicNodeEncodable`` protocol
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case CodingKeys.author:
                return .attribute
            default:
                return .element
            }
        }

        /// Conformance to XMLCoder   ``XMLCoder/DynamicNodeDecodable`` protocol
        public static func nodeDecoding(for key: CodingKey) -> XMLDecoder.NodeDecoding {
            switch key {
            case CodingKeys.author:
                return .attribute
            default:
                return .element
            }
        }

        /// Copyright holder (TopoSoft, Inc.)
        public let author: String // (Attibute)
    }
    /// A link to an external resource (Web page, digital photo, video clip, etc) with additional information.
    public struct LinkType: Codable {  // (ComplexType)


        /// Text of hyperlink.
        public let text: String? // (Element)

        /// Mime type of content (image/jpeg)
        public let type: String? // (Element)

        /// Conformance to XMLCoder   ``XMLCoder/DynamicNodeEncodable`` protocol
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case CodingKeys.href:
                return .attribute
            default:
                return .element
            }
        }

        /// Conformance to XMLCoder   ``XMLCoder/DynamicNodeDecodable`` protocol
        public static func nodeDecoding(for key: CodingKey) -> XMLDecoder.NodeDecoding {
            switch key {
            case CodingKeys.href:
                return .attribute
            default:
                return .element
            }
        }

        /// URL of hyperlink.
        public let href: URL // (Attibute)
    }
    /// An email address.  Broken into two parts (id and domain) to help prevent email harvesting.
    public struct EmailType: Codable {  // (ComplexType)


        /// id half of email address (billgates2004)
        public let id: String // (Attibute)

        /// domain half of email address (hotmail.com)
        public let domain: String // (Attibute)
    }
    /// A person or organization.
    public struct PersonType: Codable {  // (ComplexType)


        /// Name of person or organization.
        public let name: String? // (Element)

        /// Email address.
        public let email: EmailType? // (Element)

        /// Link to Web site or other external information about person.
        public let link: LinkType? // (Element)
    }
    /// A geographic point with optional elevation and time.  Available for use by other schemas.
    public struct PtType: Codable {  // (ComplexType)


        /// The elevation (in meters) of the point.
        public let ele: Double? // (Element)

        /// The time that the point was recorded.
        public let time: Date? // (Element)

        /// Conformance to XMLCoder   ``XMLCoder/DynamicNodeEncodable`` protocol
        public static func nodeEncoding(for key: CodingKey) -> XMLEncoder.NodeEncoding {
            switch key {
            case CodingKeys.lat, CodingKeys.lon:
                return .attribute
            default:
                return .element
            }
        }

        /// Conformance to XMLCoder   ``XMLCoder/DynamicNodeDecodable`` protocol
        public static func nodeDecoding(for key: CodingKey) -> XMLDecoder.NodeDecoding {
            switch key {
            case CodingKeys.lat, CodingKeys.lon:
                return .attribute
            default:
                return .element
            }
        }

        /// The latitude of the point.  Decimal degrees, WGS84 datum.
        public let lat: LatitudeType // (Attibute)

        /// The latitude of the point.  Decimal degrees, WGS84 datum.
        public let lon: LongitudeType // (Attibute)
    }
    /// An ordered sequence of points.  (for polygons or polylines, e.g.)
    public struct PtsegType: Codable {  // (ComplexType)


        /// Ordered list of geographic points.
        public let pt: [PtType] // (Element)
    }
    /// Two lat/lon pairs defining the extent of an element.
    public struct BoundsType: Codable {  // (ComplexType)


        /// The minimum latitude.
        public let minlat: LatitudeType // (Attibute)

        /// The minimum longitude.
        public let minlon: LongitudeType // (Attibute)

        /// The maximum latitude.
        public let maxlat: LatitudeType // (Attibute)

        /// The maximum longitude.
        public let maxlon: LongitudeType // (Attibute)
    }

    /// The latitude of the point.  Decimal degrees, WGS84 datum.
    public typealias LatitudeType = Double  // (SimpleType)

    /// The longitude of the point.  Decimal degrees, WGS84 datum.
    public typealias LongitudeType = Double  // (SimpleType)

    /// Used for bearing, heading, course.  Units are decimal degrees, true (not magnetic).
    public typealias DegreesType = Double  // (SimpleType)

    /// Type of GPS fix.  none means GPS had no fix.  To signify "the fix info is unknown, leave out fixType entirely. pps = military signal used
    public enum FixType: String, Codable {  // (SimpleType)
        case _none = "none"
        case _2d = "2d"
        case _3d = "3d"
        case _dgps = "dgps"
        case _pps = "pps"
    }

    /// Represents a differential GPS station.
    public typealias DgpsStationType = Int  // (SimpleType)
}
