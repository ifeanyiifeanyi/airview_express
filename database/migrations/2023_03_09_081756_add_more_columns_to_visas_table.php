<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('visas', function (Blueprint $table) {
            $table->string('country')->nullable();
            $table->string('degree_type')->nullable();
            $table->string('degree_duration')->nullable();
            $table->string('employment_duration')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('visas', function (Blueprint $table) {
            $table->dropColumn('country');
            $table->dropColumn('degree_type');
            $table->dropColumn('degree_duration');
            $table->dropColumn('employment_duration');
        });
    }
};
