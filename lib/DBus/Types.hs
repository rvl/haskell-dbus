-- Copyright (C) 2009-2012 John Millikin <jmillikin@gmail.com>
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

module DBus.Types
	( Type(..)
	
	, Signature
	, signature
	, signature_
	, signatureText
	, signatureTypes
	
	, IsValue
	, IsAtom
	, typeOf
	
	, Variant
	, IsVariant(..)
	, variantType
	
	, ObjectPath
	, objectPath
	, objectPath_
	, objectPathText
	
	, InterfaceName
	, interfaceName
	, interfaceName_
	, interfaceNameText
	
	, MemberName
	, memberName
	, memberName_
	, memberNameText
	
	, ErrorName
	, errorName
	, errorName_
	, errorNameText
	
	, BusName
	, busName
	, busName_
	, busNameText
	
	, Structure
	, Array
	, Dictionary
	, structureItems
	, arrayItems
	, dictionaryItems
	) where

import           DBus.Types.Internal hiding (typeOf)
import qualified DBus.Types.Internal

typeOf :: IsValue a => a -> Type
typeOf = DBus.Types.Internal.typeOf
