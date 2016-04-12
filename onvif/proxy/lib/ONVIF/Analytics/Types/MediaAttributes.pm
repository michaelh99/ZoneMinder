package ONVIF::Analytics::Types::MediaAttributes;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %RecordingToken_of :ATTR(:get<RecordingToken>);
my %TrackAttributes_of :ATTR(:get<TrackAttributes>);
my %From_of :ATTR(:get<From>);
my %Until_of :ATTR(:get<Until>);

__PACKAGE__->_factory(
    [ qw(        RecordingToken
        TrackAttributes
        From
        Until

    ) ],
    {
        'RecordingToken' => \%RecordingToken_of,
        'TrackAttributes' => \%TrackAttributes_of,
        'From' => \%From_of,
        'Until' => \%Until_of,
    },
    {
        'RecordingToken' => 'ONVIF::Analytics::Types::RecordingReference',
        'TrackAttributes' => 'ONVIF::Analytics::Types::TrackAttributes',
        'From' => 'SOAP::WSDL::XSD::Typelib::Builtin::dateTime',
        'Until' => 'SOAP::WSDL::XSD::Typelib::Builtin::dateTime',
    },
    {

        'RecordingToken' => 'RecordingToken',
        'TrackAttributes' => 'TrackAttributes',
        'From' => 'From',
        'Until' => 'Until',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Analytics::Types::MediaAttributes

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
MediaAttributes from the namespace http://www.onvif.org/ver10/schema.

A set of media attributes valid for a recording at a point in time or for a time interval.




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * RecordingToken


=item * TrackAttributes


=item * From


=item * Until




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Analytics::Types::MediaAttributes
   RecordingToken => $some_value, # RecordingReference
   TrackAttributes =>  { # ONVIF::Analytics::Types::TrackAttributes
     TrackInformation =>  { # ONVIF::Analytics::Types::TrackInformation
       TrackToken => $some_value, # TrackReference
       TrackType => $some_value, # TrackType
       Description => $some_value, # Description
       DataFrom =>  $some_value, # dateTime
       DataTo =>  $some_value, # dateTime
     },
     VideoAttributes =>  { # ONVIF::Analytics::Types::VideoAttributes
       Bitrate =>  $some_value, # int
       Width =>  $some_value, # int
       Height =>  $some_value, # int
       Encoding => $some_value, # VideoEncoding
       Framerate =>  $some_value, # float
     },
     AudioAttributes =>  { # ONVIF::Analytics::Types::AudioAttributes
       Bitrate =>  $some_value, # int
       Encoding => $some_value, # AudioEncoding
       Samplerate =>  $some_value, # int
     },
     MetadataAttributes =>  { # ONVIF::Analytics::Types::MetadataAttributes
       CanContainPTZ =>  $some_value, # boolean
       CanContainAnalytics =>  $some_value, # boolean
       CanContainNotifications =>  $some_value, # boolean
     },
     Extension =>  { # ONVIF::Analytics::Types::TrackAttributesExtension
     },
   },
   From =>  $some_value, # dateTime
   Until =>  $some_value, # dateTime
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

