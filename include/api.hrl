-ifndef(API_HRL).
-define(API_HRL, true).
-define(API,[start/0,stop/0,join/0,join/1,modules/0,cursors/0,get/2,get/3,put/1,put/2,index/3,delete/2,
             table/1,tables/0,version/0,dir/0,init/2,metainfo/0,seq/2,all/1,all/2]).
-include("metainfo.hrl").
-spec start() -> ok | {error,any()}.
-spec stop() -> stopped.
-spec dir() -> list({'table',atom()}).
-spec join() -> ok | {error,any()}.
-spec join(Node :: string()) -> [{atom(),any()}].
-spec modules() -> list(atom()).
-spec cursors() -> list({atom(),list(atom())}).
-spec tables() -> list(#table{}).
-spec table(Tab :: atom()) -> #table{}.
-spec version() -> {version,string()}.
-endif.
