<?php

use App\Models\Product;
use App\Models\Products;
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
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->unsignedBigInteger('page_id')->index();
            $table->enum('status', Products::STATUS)->default('Active');
            $table->string('scientific_name')->nullable();
            $table->string('latin_name')->nullable();
            $table->string('HS_code')->nullable();
            $table->string('twentyFT')->nullable();
            $table->string('fortyFT')->nullable();
            $table->text('description')->nullable();
            $table->foreign('page_id')->references('id')->on('pages')->onUpdate('cascade')->onDelete('cascade');
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
        Schema::dropIfExists('products');
    }
};
