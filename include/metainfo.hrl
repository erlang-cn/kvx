-ifndef(METAINFO_HRL).
-define(METAINFO_HRL, true).
-record(schema, {name,tables=[]}).
-record(table,  {name,container=false,type=set,fields=[],keys=[],
                 copy_type=application:get_env(kvs,mnesia_media,disc_copies)}).
-endif.
