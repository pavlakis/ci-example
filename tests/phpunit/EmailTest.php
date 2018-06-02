<?php

use Pavlakis\Ci\Email;
use PHPUnit\Framework\TestCase;

class EmailTest extends TestCase
{
    /**
     * @expectedException \Exception
     */
    public function testEmailThrowsExceptionOnInvalidEmail()
    {
        new Email('not-an-email@oops');
    }

    public function testValidEmailReturnsEmailInToString()
    {
        $email = new Email('adoni@phpminds.org');
        static::assertSame('adoni@phpminds.org', (string) $email);
    }
}
