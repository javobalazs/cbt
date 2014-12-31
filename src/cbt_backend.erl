% Licensed under the Apache License, Version 2.0 (the "License"); you may not
% use this file except in compliance with the License. You may obtain a copy of
% the License at
%
%   http://www.apache.org/licenses/LICENSE-2.0
%
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
% WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
% License for the specific language governing permissions and limitations under
% the License.

%% @doc backend behaviour to handle the btree storage.

-module(cbt_backend).

-type ref() :: pid() | atom().
-export_types([ref/0]).

%% @doc append an Erlang term to the backend storage.
-callback append_term(Ref :: ref(), Term :: term()) ->
    {ok, Pos::any(), NumBytesWritten:: integer()}
    | {error, term()}.

-callback append_term(Ref :: ref(), Term :: term(), Options :: any()) ->
    {ok, Pos::any(), NumBytesWritten:: integer()}
    | {error, term()}.

%% @doc read a term from the backend storage appended with append_term
-callback pread_term(Ref :: ref(), Pos :: any()) ->
    {ok, Term::term()}
    | {error, term()}.

-callback sync(Ref :: ref()) ->
    ok
    | {error, term()}.

-callback empty(Ref :: ref()) ->
    ok
    | {error, term()}.