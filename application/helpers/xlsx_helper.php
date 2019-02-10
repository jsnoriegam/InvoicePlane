<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

/*
 * InvoicePlane
 *
 * @author		InvoicePlane Developers & Contributors
 * @copyright	Copyright (c) 2012 - 2018 InvoicePlane.com
 * @license		https://invoiceplane.com/license.txt
 * @link		https://invoiceplane.com
 */

/**
 * Create a PDF
 *
 * @param $html
 * @param $filename
 * @param bool $stream
 * @param null $password
 *
 * @return string
 */
function xlsx_create_payment_report(
    $data,
    $filename,
    $password = null
) {
    $CI = &get_instance();

    // Get the invoice from the archive if available
    $invoice_array = array();

    $title_style = (new Box\Spout\Writer\Style\StyleBuilder())
        ->setFontBold()
        ->setFontColor(Box\Spout\Writer\Style\Color::BLUE)
        ->build();

    $writer = Box\Spout\Writer\WriterFactory::create(Box\Spout\Common\Type::XLSX);
    $writer->openToBrowser($filename . '.xlsx');

    $writer->addRowWithStyle(
        array(
            trans('date'),
            trans('invoice'),
            trans('client'),
            trans('payment_method'),
            trans('note'),
            trans('amount'),
        ),
        $title_style
    );
    $sum = 0;

    foreach ($data['results'] as $result) {
        $writer->addRow(
            array(
                date_from_mysql($result->payment_date, true),
                $result->invoice_number,
                format_client($result),
                htmlsc($result->payment_method_name),
                htmlsc($result->payment_note),
                format_currency($result->payment_amount)
            )
        );
        $sum = $sum + $result->payment_amount;
    }

    $writer->addRow(array('', '', '', '', '', format_currency($sum)));

    $writer->close();
    exit(0);
}
