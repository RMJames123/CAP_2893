using {com.salesorder.types} from './types';

namespace com.salesorder;

using {managed} from '@sap/cds/common';

entity zcustomer_2893 {
    key email     : types.zde_email_2893;
        firstname : types.zde_firstname_2893;
        lastname  : types.zde_lastname_2893;
        country   : types.zde_country_2893;
        imageurl  : types.zde_imageurl_2893;
};

entity zproducts_2893 {
    key name             : types.zde_name_2893;
        description      : types.zde_description_2893;
        releasedate      : Date;
        discontinueddate : Date;
        price            : types.zde_price_2893;
        height           : types.zde_height_2893;
        width            : types.zde_width_2893;
        depth            : types.zde_depth_2893;
        unitofmeasure    : types.zde_unitofmeasure_2893;
};

entity zorderstat_2893 {
    key id          : types.zde_orderstatus_2893;
        description : types.zde_dorderstatus_2893;
};

entity zheader_2893 : managed {
    key headeruuid   : UUID;
    key id           : Integer;
        email        : Association to zcustomer_2893;
        firstname    : types.zde_firstname_2893;
        lastname     : types.zde_lastname_2893;
        country      : types.zde_country_2893;
        createon     : Date;
        deliverydate : Date;
        orderstatus  : types.zde_orderstatus_2893;
        imageurl     : types.zde_imageurl_2893;
        items        : Composition of many zitems_2893
                           on items.header = $self;
};

entity zitems_2893 : managed {
    key itemuuid         : UUID;
    key id               : Integer;
        header           : Association to zheader_2893;
        name             : Association to zproducts_2893;
        description      : types.zde_description_2893;
        releasedate      : Date;
        discontinueddate : Date;
        price            : types.zde_price_2893;
        height           : types.zde_height_2893;
        width            : types.zde_width_2893;
        depth            : types.zde_depth_2893;
        quantity         : types.zde_quantity_2893;
        unitofmeasure    : types.zde_unitofmeasure_2893;
}
