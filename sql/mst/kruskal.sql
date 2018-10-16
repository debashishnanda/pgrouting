/*PGR-GNU*****************************************************************
File: kruskal.sql

Generated with Template by:
Copyright (c) 2016 pgRouting developers
Mail: project@pgrouting.org

Function's developer:
Copyright (c) 2018 Aditya Pratap Singh
Mail: adityapratap.singh28@gmail.com

------

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

********************************************************************PGR-GNU*/

CREATE OR REPLACE FUNCTION pgr_kruskal(
    edges_sql TEXT,             -- Edge sql

    OUT seq INTEGER,            -- Seq
    OUT component BIGINT,       -- the lowest number of the node in the component
    OUT edge BIGINT,	     	-- Edge linked to that node
    OUT cost FLOAT,             -- Cost of edge
    OUT tree_cost FLOAT)        -- Spanning tree cost
RETURNS SETOF RECORD AS
'MODULE_PATHNAME', 'kruskal'
LANGUAGE c VOLATILE STRICT;