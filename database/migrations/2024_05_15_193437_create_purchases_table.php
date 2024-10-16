<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('purchases', function (Blueprint $table) {
            $table->id();
            $table->integer('vendor_id');
            $table->dateTime('purchase_date');
            $table->dateTime('delivery_date');
            $table->integer('warehouse_id');
            $table->integer('purchase_status_id');
            $table->double('total');
            $table->double('paid_amount');
            $table->string('remark');
            $table->float('discount');
            $table->float('vat');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('purchases');
    }
};
