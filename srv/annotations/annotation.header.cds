using {catalogService as projection} from '../catalog.service';
using from './annotation.items';

annotate projection.zheader_2893 with {
    id           @title: 'ID';
    email        @title: 'Email';
    firstname    @title: 'First Name';
    lastname     @title: 'Last Name';
    country      @title: 'Country';
    createon     @title: 'Create on';
    deliverydate @title: 'Delivery Date';
    orderstatus  @title: 'Order Status';
    imageurl     @title: 'Image URL';
};

annotate projection.zheader_2893 with {
    id          @Common: {ValueList: {
        $Type         : 'Common.ValueListType',
        CollectionPath: 'zheader_2893',
        Parameters    : [{
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: id,
            ValueListProperty: 'id',
        }]
    }};
    email       @Common: {ValueList: {
        $Type         : 'Common.ValueListType',
        CollectionPath: 'zcustomer_2893',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: email_email,
                ValueListProperty: 'email',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'firstname',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'lastname',
            }

        ]
    }, };
    orderstatus @Common: {ValueList: {
        $Type         : 'Common.ValueListType',
        CollectionPath: 'zorderstat_2893',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: orderstatus,
                ValueListProperty: 'id',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'description',
            }

        ]
    }, }
};

annotate projection.zheader_2893 with @UI.SelectionFields: [
    'id',
    'email_email',
    'orderstatus'
];

annotate projection.zheader_2893 with @UI.HeaderInfo: {
    $Type         : 'UI.HeaderInfoType',
    TypeName      : 'Order',
    TypeNamePlural: 'Orders',

    Title         : {
        $Type: 'UI.DataField',
        Value: id,
    }

};

annotate projection.zheader_2893 with @UI.LineItem: [

    {
        $Type: 'UI.DataField',
        Value: id
    },
    {
        $Type: 'UI.DataField',
        Value: email_email,

    },
    {
        $Type: 'UI.DataField',
        Value: firstname
    },
    {
        $Type: 'UI.DataField',
        Value: lastname
    },
    {
        $Type: 'UI.DataField',
        Value: country
    },
    {
        $Type: 'UI.DataField',
        Value: createon
    },
    {
        $Type: 'UI.DataField',
        Value: deliverydate
    },
    {
        $Type: 'UI.DataField',
        Value: orderstatus
    },
    {
        $Type: 'UI.DataField',
        Value: imageurl
    }

];

annotate projection.zheader_2893 with @UI: {
    FieldGroup #header: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: id            },
            {
                $Type: 'UI.DataField',
                Value: email_email
            },
    {
            $Type: 'UI.DataField',
            Value: firstname
        },
        {
            $Type: 'UI.DataField',
            Value: lastname
        },
    {
            $Type: 'UI.DataField',
            Value: country
        },
        {
            $Type: 'UI.DataField',
            Value: createon
        },
        {
            $Type: 'UI.DataField',
            Value: deliverydate
        },
        {
            $Type: 'UI.DataField',
            Value: orderstatus
        },
        {
            $Type: 'UI.DataField',
            Value: imageurl
        }

        ],
    },
    Facets    : [
        {
        $Type : 'UI.ReferenceFacet',
        Target: '@UI.FieldGroup#header',
        Label :'Orders'
    },
    {
        $Type: 'UI.ReferenceFacet',
        Target: 'items/@UI.LineItem#items',
        Label: 'Order Details'
    }
    ],
};
