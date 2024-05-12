<?php

use App\Models\CmsPage;
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
        Schema::create('cms_pages', function (Blueprint $table) {
            $table->id();
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
            $table->string('image')->nullable();
            $table->string('page')->nullable();
            $table->string('section')->nullable();
            $table->string('sort')->nullable();
            $table->string('route')->nullable();
            $table->enum('status', CmsPage::STATUS)->default('Active');
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
        Schema::dropIfExists('cms_pages');
    }
};
