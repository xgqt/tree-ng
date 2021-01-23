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

# Copyright (c) 2021, Maciej Barć (xgqt@protonmail.com)
# Licensed under the GNU GPL v3 License


cmake_minimum_required(VERSION 2.4)

project(tree-ng)


include_directories(${PROJECT_SOURCE_DIR})

add_executable(tree-ng
  color.c
  file.c
  hash.c
  html.c
  json.c
  strverscmp.c
  tree.c
  tree.h
  unix.c
  xml.c
  )
