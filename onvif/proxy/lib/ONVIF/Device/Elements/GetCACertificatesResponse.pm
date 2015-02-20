
package ONVIF::Device::Elements::GetCACertificatesResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://www.onvif.org/ver10/device/wsdl' }

__PACKAGE__->__set_name('GetCACertificatesResponse');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    SOAP::WSDL::XSD::Typelib::ComplexType
);

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %CACertificate_of :ATTR(:get<CACertificate>);

__PACKAGE__->_factory(
    [ qw(        CACertificate

    ) ],
    {
        'CACertificate' => \%CACertificate_of,
    },
    {
        'CACertificate' => 'ONVIF::Device::Types::Certificate',
    },
    {

        'CACertificate' => 'CACertificate',
    }
);

} # end BLOCK







} # end of BLOCK



1;


=pod

=head1 NAME

ONVIF::Device::Elements::GetCACertificatesResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
GetCACertificatesResponse from the namespace http://www.onvif.org/ver10/device/wsdl.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * CACertificate

 $element->set_CACertificate($data);
 $element->get_CACertificate();





=back


=head1 METHODS

=head2 new

 my $element = ONVIF::Device::Elements::GetCACertificatesResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   CACertificate =>  { # ONVIF::Device::Types::Certificate
     CertificateID =>  $some_value, # token
     Certificate =>  { # ONVIF::Device::Types::BinaryData
       Data =>  $some_value, # base64Binary
     },
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut
