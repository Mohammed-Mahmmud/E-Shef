<?php

use App\Models\Blogs;
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
        Schema::create('blogs', function (Blueprint $table) {
            $table->id();
            $table->string('slug')->nullable();
            ///
            $table->string('title')->nullable();
            $table->string('sub_title')->nullable();
            $table->string('title_tow')->nullable();
            $table->string('sub_title_tow')->nullable();
            $table->string('title_three')->nullable();
            $table->string('sub_title_three')->nullable();
            $table->string('title_four')->nullable();
            $table->string('sub_title_four')->nullable();
            $table->text('description')->nullable();
            $table->text('sub_description')->nullable();
            $table->text('button')->nullable();
            $table->text('sub_button')->nullable();
            ///
            $table->string('date')->nullable();
            $table->string('map')->nullable();
            $table->string('sort')->nullable();
            $table->string('route')->nullable();
            $table->string('facebook')->nullable();
            $table->string('twitter')->nullable();
            $table->string('instagram')->nullable();
            $table->enum('status', Blogs::STATUS)->default('Active');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('blogs');
    }
};
