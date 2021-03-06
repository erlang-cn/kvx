-ifndef(BACKEND_HRL).
-define(BACKEND_HRL, true).
-define(BACKEND, [get/2,put/1,delete/2,index/3,
                  join/1,dir/0,create_table/2,add_table_index/2,seq/2,all/1,count/1,version/0]).
-spec put(Record :: tuple()) -> ok | {error,any()}.
-spec get(Tab :: atom(), Key :: any()) -> {ok,any()} | {error,not_found | duplicated}.
-spec delete(Tab :: atom(), Key :: any()) -> ok | {error,any()}.
-spec index(Tab :: atom(), Key :: any(), Value :: any()) -> list(tuple()).
-compile({no_auto_import,[get/1,put/2]}).
-endif.
