using {reportService as projection} from '../report.service';

annotate projection.repventasitem with {
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

annotate projection.repventasitem with @UI: {
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