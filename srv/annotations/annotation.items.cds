using {catalogService as projection} from '../catalog.service';

annotate projection.zitems_2893 with {
    id               @title: 'ID';
    name             @title: 'Name';
    description      @title: 'Description';
    releasedate      @title: 'Release Date';
    discontinueddate @title: 'Discontinued Date';
    price            @title: 'Price';
    height           @title: 'Height';
    width            @title: 'Width';
    depth            @title: 'Depth';
    quantity         @title: 'Quantity';
    unitofmeasure    @title: 'Unit Of Measure'

};

annotate projection.zitems_2893 with @UI: {
LineItem #items : [
    {
        $Type: 'UI.DataField',
        Value: id
    },
    {
        $Type: 'UI.DataField',
        Value: name_name
    },
    {
        $Type: 'UI.DataField',
        Value: description
    },
    {
        $Type: 'UI.DataField',
        Value: releasedate
    },
    {
        $Type: 'UI.DataField',
        Value: discontinueddate
    },
    {
        $Type: 'UI.DataField',
        Value: price
    },
    {
        $Type: 'UI.DataField',
        Value: height
    },
    {
        $Type: 'UI.DataField',
        Value: width
    },
    {
        $Type: 'UI.DataField',
        Value: depth
    },
    {
        $Type: 'UI.DataField',
        Value: quantity
    },
    {
        $Type: 'UI.DataField',
        Value: unitofmeasure
    }
],

    FieldGroup #item : {
        $Type : 'UI.FieldGroupType',
        Data: [
            {
                $Type: 'UI.DataField',
                Value: id            },
            {
                $Type: 'UI.DataField',
                Value: name_name            },
            {
                $Type: 'UI.DataField',
                Value: description            },
            {
                $Type: 'UI.DataField',
                Value: releasedate            },
            {
                $Type: 'UI.DataField',
                Value: discontinueddate            },
            {
                $Type: 'UI.DataField',
                Value: price            },
            {
                $Type: 'UI.DataField',
                Value: height            },
            {
                $Type: 'UI.DataField',
                Value: width            },
            {
                $Type: 'UI.DataField',
                Value: depth            },
            {
                $Type: 'UI.DataField',
                Value: quantity            },
            {
                $Type: 'UI.DataField',
                Value: unitofmeasure            }
        ]
    },

Facets  : [
    {
        $Type: 'UI.ReferenceFacet',
        Target: '@UI.FieldGroup#item'
    }
],
};

annotate projection.zitems_2893 with {
    name @Common: {
        ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath: 'zproducts_2893',
            Parameters: [
                {
                    $Type: 'Common.ValueListParameterInOut',
                    LocalDataProperty: name_name,
                    ValueListProperty: 'name'
                },
                {
                    $Type: 'Common.ValueListParameterOut',
                    LocalDataProperty: description,
                    ValueListProperty: 'description'
                },
                {
                    $Type: 'Common.ValueListParameterOut',
                    LocalDataProperty: releasedate,
                    ValueListProperty: 'releasedate'
                },
                {
                    $Type: 'Common.ValueListParameterOut',
                    LocalDataProperty: discontinueddate,
                    ValueListProperty: 'discontinueddate'
                },
                {
                    $Type: 'Common.ValueListParameterOut',
                    LocalDataProperty: price,
                    ValueListProperty: 'price'
                },
                {
                    $Type: 'Common.ValueListParameterOut',
                    LocalDataProperty: height,
                    ValueListProperty: 'height'
                },
                {
                    $Type: 'Common.ValueListParameterOut',
                    LocalDataProperty: width,
                    ValueListProperty: 'width'
                },
                {
                    $Type: 'Common.ValueListParameterOut',
                    LocalDataProperty: depth,
                    ValueListProperty: 'depth'
                },
                {
                    $Type: 'Common.ValueListParameterOut',
                    LocalDataProperty: unitofmeasure,
                    ValueListProperty: 'unitofmeasure'
                },

            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'description',
            },
            {
                $Type            : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty: 'price',
            }            
            ]
        },
    }
};

annotate projection.zitems_2893 with @(

    Common.SideEffects : {
        $Type : 'Common.SideEffectsType',
        SourceProperties : [
            name_name
        ],
        TargetEntities: [
            'zitems_2893'
        ]
    }
);
