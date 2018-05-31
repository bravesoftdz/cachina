unit InterfaceController;

interface

uses
  DB, Classes, Mapper;

type
  IController = interface['{F3ED2A00-1809-4084-88D9-5A0D92CE4925}']
    procedure Edit;
    procedure Insert;
    procedure Update;
    procedure Delete;
    procedure SetValue(Propriedade, Value: string);
    procedure Select( where: string = '');
    procedure SelectId(id: string = '');
  end;

implementation


end.
