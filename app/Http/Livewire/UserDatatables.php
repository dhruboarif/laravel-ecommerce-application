<?php

namespace App\Http\Livewire;
use Livewire\Component;
use App\Models\User;
use App\testformModel;
use Illuminate\Support\Str;
use Mediconesystems\LivewireDatatables\Column;
use Mediconesystems\LivewireDatatables\NumberColumn;
use Mediconesystems\LivewireDatatables\DateColumn;
use Mediconesystems\LivewireDatatables\Http\Livewire\LivewireDatatable;


class UserDatatables extends LivewireDatatable
{
    public $model = testformModel::class;

    /**

     * Write code on Method

     *

     * @return response()

     */

    public function columns()

    {
        return [
            NumberColumn::name('id')
                ->label('ID')
                ->sortBy('id'),
            Column::name('name')
                ->label('Name'),
            Column::name('email'),
            DateColumn::name('created_at')
                ->label('Creation Date')

        ];

    }

}