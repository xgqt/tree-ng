# This file is part of tree-ng.

# tree-ng is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# tree-ng is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with tree-ng.  If not, see <https://www.gnu.org/licenses/>.

# Copyright (c) 2021, Maciej Barć (xgqt@riseup.net)
# Licensed under the GNU GPL v3 License


cmake_minimum_required(VERSION 3.1)

project(tree-ng)


include_directories(${PROJECT_SOURCE_DIR})

add_executable(tree-ng
  src/color.c
  src/file.c
  src/hash.c
  src/html.c
  src/json.c
  src/strverscmp.c
  src/tree.c
  src/tree.h
  src/unix.c
  src/xml.c
)
