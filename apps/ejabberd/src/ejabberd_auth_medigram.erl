-module(ejabberd_auth_medigram).
-author('bob@medigram.com').

%% External exports
-export([start/1,
	 set_password/3,
	 check_password/3,
	 check_password/5,
	 try_register/3,
	 dirty_get_registered_users/0,
	 get_vh_registered_users/1,
	 get_vh_registered_users/2,
	 get_vh_registered_users_number/1,
	 get_vh_registered_users_number/2,
	 get_password/2,
	 get_password_s/2,
	 is_user_exists/2,
	 remove_user/2,
	 remove_user/3,
	 plain_password_required/0
	]).

-include("ejabberd.hrl").

%%%----------------------------------------------------------------------
%%% API
%%%----------------------------------------------------------------------
start(Host) ->
    ok.

plain_password_required() ->
    true.

check_password(User, Server, Password) ->
    gen_server:call(omg, {handle_auth, User, Password}).

check_password(User, Server, Password, _Digest, _DigestGen) ->
    check_password(User, Server, Password).

set_password(User, Server, Password) ->
    ok.

try_register(User, Server, Password) ->
    {atomic, ok}.

dirty_get_registered_users() ->
    [].

get_vh_registered_users(Server) ->
    [].

get_vh_registered_users(Server, Data)  ->
    [].

get_vh_registered_users_number(Server) ->
    0.

get_vh_registered_users_number(Server, Data) ->
    0.

%% The password can only be returned if cache is enabled, cached info exists and is fresh enough.
get_password(User, Server) ->
    false.

get_password_s(User, Server) ->
    [].

%% @spec (User, Server) -> true | false | {error, Error}
is_user_exists(User, Server) ->
    gen_server:call(omg, {handle_is_user, User}).

remove_user(User, Server) ->
    true.

remove_user(User, Server, Password) ->
    true.

