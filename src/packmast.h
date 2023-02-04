/* packmast.h --

   This file is part of the UPX executable compressor.

   Copyright (C) 1996-2023 Markus Franz Xaver Johannes Oberhumer
   Copyright (C) 1996-2023 Laszlo Molnar
   All Rights Reserved.

   UPX and the UCL library are free software; you can redistribute them
   and/or modify them under the terms of the GNU General Public License as
   published by the Free Software Foundation; either version 2 of
   the License, or (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; see the file COPYING.
   If not, write to the Free Software Foundation, Inc.,
   59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

   Markus F.X.J. Oberhumer              Laszlo Molnar
   <markus@oberhumer.com>               <ezerotven+github@gmail.com>
 */

#pragma once
#ifndef UPX_PACKMASTER_H__
#define UPX_PACKMASTER_H__ 1

class Packer;
class InputFile;
class OutputFile;

/*************************************************************************
// interface for work.cpp
**************************************************************************/

class PackMaster final {
public:
    PackMaster(InputFile *f, options_t *o = nullptr);
    ~PackMaster();

    void pack(OutputFile *fo);
    void unpack(OutputFile *fo);
    void test();
    void list();
    void fileInfo();

    typedef Packer *(*visit_func_t)(Packer *p, void *user);
    static Packer *visitAllPackers(visit_func_t, InputFile *f, const options_t *, void *user);

private:
    InputFile *fi = nullptr;
    Packer *p = nullptr;

    static Packer *getPacker(InputFile *f);
    static Packer *getUnpacker(InputFile *f);

    // setup local options for each file
    options_t local_options;
    options_t *saved_opt = nullptr;
};

#endif /* already included */

/* vim:set ts=4 sw=4 et: */
