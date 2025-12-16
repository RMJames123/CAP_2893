namespace com.salesorder;

type zde_string2_2893       : String(2);
type zde_string8_2893       : String(8);
type zde_string30_2893      : String(30);
type zde_string40_2893      : String(40);

type zde_dec12_2_2893       : Decimal(12, 2);
type zde_dec13_3_2893       : Decimal(12, 2);
type zde_dec15_3_2893       : Decimal(15, 3);

type zde_email_2893         : zde_string40_2893;
type zde_firstname_2893     : zde_string40_2893;
type zde_lastname_2893      : zde_string40_2893;
type zde_country_2893       : zde_string30_2893;
type zde_imageurl_2893      : String(255);

type zde_name_2893          : zde_string40_2893;
type zde_description_2893   : zde_string40_2893;
type zde_unitofmeasure_2893 : zde_string2_2893;

type zde_orderstatus_2893   : zde_string8_2893;
type zde_dorderstatus_2893  : zde_string30_2893;
type zde_price_2893         : zde_dec12_2_2893;
type zde_height_2893        : zde_dec15_3_2893;
type zde_width_2893         : zde_dec13_3_2893;
type zde_depth_2893         : zde_dec12_2_2893;

entity zcustomer_2893 {
    key email     : zde_email_2893;
        firstname : zde_firstname_2893;
        lastname  : zde_lastname_2893;
        country   : zde_country_2893;
        imageurl  : zde_imageurl_2893;
};

entity zproducts_2893 {
    key name             : zde_name_2893;
        description      : zde_description_2893;
        releasedate      : Date;
        discontinueddate : Date;
        price            : zde_price_2893;
        height           : zde_height_2893;
        width            : zde_width_2893;
        depth            : zde_depth_2893;
        unitofmeasure    : zde_unitofmeasure_2893;
};

entity zorderstat_2893 {
    key id          : zde_orderstatus_2893;
        description : zde_dorderstatus_2893;
};

entity zheader_2893 {
    key headeruuid  : String;
        id          : Integer;
        email       : zde_email_2893;
        firstname   : zde_firstname_2893;
        lastanme    : zde_lastname_2893;
        country     : zde_country_2893;
        createon    : Date;
        deliverdate : Date;
        orderstatus : zde_orderstatus_2893;
        imageurl_   : zde_imageurl_2893;
};

entity zitems_2893 {
    key headeruid        : String;
    key itemuuid         : String;
        id               : Integer;
        name             : zde_name_2893;
        description      : zde_description_2893;
        releasedate      : Date;
        discontinueddate : Date;
        price            : zde_price_2893;
        height           : zde_height_2893;
        width            : zde_width_2893;
        depth            : zde_depth_2893;
        unitofmeasure    : zde_unitofmeasure_2893;
}
