<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AdminsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('admins')->insert(array(
        	array(
		 'name' => "Arif",
		 'email' => 'ariful48@gmail.com',
		 'password' => bcrypt('test1234'),
		        	),
		        	array(
		 'name' => "faruk",
		 'email' => 'faruk48@gmail.com',
		 'password' => bcrypt('test1234'),
		        	)
		));
    }
}
