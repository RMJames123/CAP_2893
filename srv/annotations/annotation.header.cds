using { catalogService as projection } from '../catalog.service';

annotate projection.zheader_2893 with {
    id           @title: 'ID';
    email        @title: 'Email';
    firstname    @title: 'First Name';
    lastname     @title: 'Last Name';
    country      @title: 'Country';
    createon     @title: 'Create on';
    deliverydate @title: 'Delivery Date';
    orderstatus  @title: 'Order Status';
    imageurl     @title: 'Image URL'
}

annotate projection.zheader_2893 with @UI.HeaderInfo  : {
    $Type : 'UI.HeaderInfoType',
    TypeName : 'Order',
    TypeNamePlural : 'Orders',
};

annotate projection.zheader_2893 with @UI.LineItem  : [

{
    $Type : 'UI.DataField',
    Value : id
},
{
    $Type : 'UI.DataField',
    Value : email
},
{
    $Type : 'UI.DataField',
    Value : firstname
},
{
    $Type : 'UI.DataField',
    Value : lastname
},
{
    $Type : 'UI.DataField',
    Value : country
},
{
    $Type : 'UI.DataField',
    Value : createon
},
{
    $Type : 'UI.DataField',
    Value : deliverydate
},
{
    $Type : 'UI.DataField',
    Value : orderstatus
},
{
    $Type : 'UI.DataField',
    Value : imageurl
}

]

